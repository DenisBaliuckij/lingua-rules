from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import re

import clingo

from .datasets import (
    EXCEPTIONS,
    FACTS,
    PARADIGMS,
    Dataset,
    load_datasets,
    normalize_key,
    parse_key,
)
from .features import (
    FEATURE_KEY_RE as _FEATURE_KEY_RE,
    FeatureVocabulary,
    UnknownFeatureError,
    feature_key,
    load_feature_vocabulary,
    validate_features,
)
from .loader import category_rule_path, load_language
from .transforms import RuleContext

# Identifiers in a rule file outside comments and strings are what rules can refer to.
_WORD_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_]*")
_STRING_RE = re.compile(r'"(?:\\.|[^"\\])*"')
_COMMENT_RE = re.compile(r"%.*")


def _rule_words(source: str) -> set[str]:
    code = _COMMENT_RE.sub(" ", _STRING_RE.sub(" ", source))
    return set(_WORD_RE.findall(code))


@dataclass(frozen=True)
class LintIssue:
    category: str
    message: str


def lint_language(rules_dir: Path, lang_code: str) -> list[LintIssue]:
    issues: list[LintIssue] = []
    language = load_language(rules_dir, lang_code)
    try:
        vocab = load_feature_vocabulary(rules_dir, lang_code)
    except Exception as exc:
        return [
            LintIssue(
                category="<all>",
                message=f"could not load feature vocabulary: {exc}",
            )
        ]

    for category in language.categories:
        # Declaring a category in lang.yaml before writing its .lp file is a
        # normal authoring state, not a crash.
        try:
            rule_path = category_rule_path(rules_dir, lang_code, category)
            source = rule_path.read_text(encoding="utf-8")
        except FileNotFoundError:
            issues.append(
                LintIssue(
                    category=category,
                    message=(
                        f"rule file for category '{category}' does not exist yet "
                        f"(expected at {rules_dir / lang_code / f'{category}.lp'})"
                    ),
                )
            )
            continue

        for match in _FEATURE_KEY_RE.finditer(source):
            pairs = dict(pair.split("=", 1) for pair in match.group(1).split(";"))
            try:
                validate_features(vocab, pairs)
            except UnknownFeatureError as exc:
                issues.append(LintIssue(category=category, message=str(exc)))
                continue
            # Forms are looked up by the sorted key; any other order never matches.
            canonical = feature_key(pairs)
            if match.group(1) != canonical:
                issues.append(
                    LintIssue(
                        category=category,
                        message=(
                            f"feature key '{match.group(1)}' is not in canonical "
                            f"order and will never match; write '{canonical}'"
                        ),
                    )
                )

        errors: list[str] = []
        datasets = load_datasets(rules_dir, lang_code, category, errors)
        issues.extend(LintIssue(category=category, message=e) for e in errors)
        issues.extend(
            LintIssue(category=category, message=m)
            for m in _dataset_issues(datasets, source, vocab)
        )

        data = "\n".join(fact for d in datasets for fact in d.facts()) + "\n"
        try:
            ctl = clingo.Control()
            ctl.add("base", [], f'input_lemma("__lint_probe__").\n{data}{source}')
            ctl.ground([("base", [])], context=RuleContext())
        except RuntimeError as exc:
            issues.append(LintIssue(category=category, message=f"parse error: {exc}"))

    return issues


def _dataset_issues(
    datasets: list[Dataset], source: str, vocab: FeatureVocabulary
) -> list[str]:
    """Problems a table can have that only show up next to the rules and the vocabulary:
    undeclared features, conflicting listed forms, a predicate no rule reads, and a
    constant (usually a class name) that no rule or other table knows."""
    messages: list[str] = []
    rule_words = _rule_words(source)
    # A constant is known when a rule mentions it, it names a class in another
    # table, or it is a declared feature value (class_gender(m_hard, masculine)).
    known_constants = set(rule_words)
    for values in vocab.dimensions.values():
        known_constants.update(values)
    for dataset in datasets:
        if dataset.kind == PARADIGMS:
            known_constants.update(dataset.cell(row, "class") for row in dataset.rows)
        elif dataset.kind == FACTS and dataset.key.type == "constant":
            known_constants.update(row.cells[0] for row in dataset.rows)

    for dataset in datasets:
        for line, raw in dataset.feature_keys():
            try:
                validate_features(vocab, parse_key(raw))
            except UnknownFeatureError as exc:
                messages.append(f"{dataset.path}:{line}: {exc}")

        if dataset.kind == EXCEPTIONS:
            seen: dict[tuple[str, str], tuple[int, str]] = {}
            for row in dataset.rows:
                lemma, form = dataset.cell(row, "lemma"), dataset.cell(row, "form")
                key = normalize_key(dataset.cell(row, "features"))
                previous = seen.setdefault((lemma, key), (row.line, form))
                if previous[1] != form:
                    messages.append(
                        f"{dataset.path}:{row.line}: {lemma} {key} is listed as {form!r} "
                        f"but line {previous[0]} gives {previous[1]!r}"
                    )

        if dataset.kind == PARADIGMS and "paradigm_ending" not in rule_words:
            messages.append(
                f"{dataset.path}: no rule reads paradigm_ending/4; add one with the "
                "class-paradigm template"
            )

        if dataset.kind != FACTS:
            continue
        for index, column in enumerate(dataset.columns[1:], start=1):
            if column.is_meta:
                continue
            if column.name not in rule_words:
                messages.append(
                    f"{dataset.path}: no rule uses the predicate '{column.name}' "
                    "(a typo in the header, or a rule still to be written)"
                )
            if column.type != "constant":
                continue
            unknown = sorted(
                {row.cells[index] for row in dataset.rows if row.cells[index]} - known_constants
            )
            if unknown:
                shown = ", ".join(unknown[:10]) + (" ..." if len(unknown) > 10 else "")
                messages.append(
                    f"{dataset.path}: {column.name} values not used by any rule or table: {shown}"
                )
    return messages
