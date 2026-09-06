from __future__ import annotations

from pathlib import Path

import clingo

from .features import feature_key
from .loader import category_rule_path
from .transforms import RuleContext


class NoRuleMatchedError(Exception):
    """Raised when no rule in the category produces a form for the request."""


class InvalidLemmaError(Exception):
    """Raised when a lemma contains characters that can't appear in a Clingo string literal."""


def _escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def generate_form(
    rules_dir: Path,
    lang_code: str,
    category: str,
    lemma: str,
    features: dict[str, str],
) -> str:
    if "\n" in lemma or "\r" in lemma:
        raise InvalidLemmaError(
            f"lemma {lemma!r} contains a newline, which cannot appear in a "
            "Clingo string literal"
        )
    rule_path = category_rule_path(rules_dir, lang_code, category)
    source = rule_path.read_text(encoding="utf-8")
    program = f'input_lemma("{_escape(lemma)}").\n{source}'
    target_key = feature_key(features)

    ctl = clingo.Control()
    ctl.add("base", [], program)
    ctl.ground([("base", [])], context=RuleContext())

    matches: list[str] = []
    with ctl.solve(yield_=True) as handle:
        for model in handle:
            for atom in model.symbols(atoms=True):
                if atom.name == "form" and len(atom.arguments) == 3:
                    atom_lemma, atom_key, atom_form = atom.arguments
                    if atom_lemma.string == lemma and atom_key.string == target_key:
                        matches.append(atom_form.string)
            break  # rule files are expected to be deterministic: one model is enough

    if not matches:
        raise NoRuleMatchedError(
            f"no rule in {lang_code}/{category} produced a form for "
            f"lemma={lemma!r} features={features!r}"
        )
    return matches[0]
