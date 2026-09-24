from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import clingo

from .features import (
    FEATURE_KEY_RE as _FEATURE_KEY_RE,
    UnknownFeatureError,
    feature_key,
    load_feature_vocabulary,
    validate_features,
)
from .loader import category_rule_path, load_language
from .transforms import RuleContext


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

        try:
            ctl = clingo.Control()
            ctl.add("base", [], f'input_lemma("__lint_probe__").\n{source}')
            ctl.ground([("base", [])], context=RuleContext())
        except RuntimeError as exc:
            issues.append(LintIssue(category=category, message=f"parse error: {exc}"))

    return issues
