from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path

import clingo

from .datasets import DatasetError, dataset_program
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
    """Raised when Clingo cannot parse a rule file, or a dataset file is malformed.

    Carries the offending file's path alongside the parse message, so the
    linguist is told which file to go fix.
    """


@dataclass(frozen=True)
class Generated:
    """The standard form, plus the forms admitted next to it: (variety, form) pairs
    from the category's variants table (or from rules that derive admit/4)."""

    form: str
    admitted: list[tuple[str, str]] = field(default_factory=list)


def generate_form(
    rules_dir: Path,
    lang_code: str,
    category: str,
    lemma: str,
    features: dict[str, str],
) -> str:
    return generate_forms(rules_dir, lang_code, category, lemma, features).form


def generate_forms(
    rules_dir: Path,
    lang_code: str,
    category: str,
    lemma: str,
    features: dict[str, str],
) -> Generated:
    try:
        reject_unsafe_characters(lemma, "lemma")
    except UnsafeFieldValueError as exc:
        raise InvalidLemmaError(str(exc)) from exc

    rule_path = category_rule_path(rules_dir, lang_code, category)
    source = rule_path.read_text(encoding="utf-8")
    try:
        # Only the requested lemma's rows of lemma-keyed tables are loaded.
        data = dataset_program(rules_dir, lang_code, category, lemma)
    except DatasetError as exc:
        raise RuleFileParseError(f"could not load dataset {exc}") from exc
    program = f'input_lemma("{escape_clingo_string(lemma)}").\n{data}{source}'
    target_key = feature_key(features)

    # Only one lemma's rows are loaded, so predicates such as irregular/1 or a
    # lexicon column are often empty; Clingo's "atom does not occur in any rule
    # head" notes are expected here, not problems (lint still reports real ones).
    ctl = clingo.Control(["--warn=none"])
    try:
        ctl.add("base", [], program)
        ctl.ground([("base", [])], context=RuleContext())
    except RuntimeError as exc:
        raise RuleFileParseError(
            f"could not parse rule file {rule_path}: {exc}"
        ) from exc

    matches: list[str] = []
    admitted: list[tuple[str, str]] = []
    with ctl.solve(yield_=True) as handle:
        for model in handle:
            for atom in model.symbols(atoms=True):
                if atom.name == "form" and len(atom.arguments) == 3:
                    atom_lemma, atom_key, atom_form = atom.arguments
                    if atom_lemma.string == lemma and atom_key.string == target_key:
                        matches.append(atom_form.string)
                elif atom.name == "admit" and len(atom.arguments) == 4:
                    atom_lemma, atom_key, atom_form, variety = atom.arguments
                    if atom_lemma.string == lemma and atom_key.string == target_key:
                        admitted.append((str(variety), atom_form.string))
            break  # rule files are expected to be deterministic: one model is enough

    if not matches:
        raise NoRuleMatchedError(
            f"no rule in {lang_code}/{category} produced a form for "
            f"lemma={lemma!r} features={features!r}"
        )
    return Generated(matches[0], sorted(set(admitted)))
