from __future__ import annotations

from pathlib import Path

import clingo

from .escaping import (
    UnsafeFieldValueError,
    escape_clingo_string,
    reject_unsafe_characters,
)
from .features import feature_key
from .loader import category_rule_path
from .transforms import RuleContext


class NoRuleMatchedError(Exception):
    """Raised when no rule in the category produces a form for the request."""


class InvalidLemmaError(UnsafeFieldValueError):
    """Raised when a lemma contains characters that can't appear in a Clingo string literal.

    Subclasses the shared UnsafeFieldValueError so callers may catch either the
    general "unsafe field" case or this lemma-specific one.
    """


class RuleFileParseError(Exception):
    """Raised when Clingo cannot parse a rule file.

    Carries the offending file's path alongside Clingo's own parse message, so
    the linguist is told which file to go fix.
    """


def generate_form(
    rules_dir: Path,
    lang_code: str,
    category: str,
    lemma: str,
    features: dict[str, str],
) -> str:
    try:
        reject_unsafe_characters(lemma, "lemma")
    except UnsafeFieldValueError as exc:
        raise InvalidLemmaError(str(exc)) from exc

    rule_path = category_rule_path(rules_dir, lang_code, category)
    source = rule_path.read_text(encoding="utf-8")
    program = f'input_lemma("{escape_clingo_string(lemma)}").\n{source}'
    target_key = feature_key(features)

    ctl = clingo.Control()
    try:
        ctl.add("base", [], program)
        ctl.ground([("base", [])], context=RuleContext())
    except RuntimeError as exc:
        raise RuleFileParseError(
            f"could not parse rule file {rule_path}: {exc}"
        ) from exc

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
