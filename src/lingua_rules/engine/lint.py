from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path

import clingo

from .features import UnknownFeatureError, load_feature_vocabulary, validate_features
from .loader import category_rule_path, load_language
from .transforms import RuleContext

_FEATURE_KEY_RE = re.compile(
    r'"([a-zA-Z_][a-zA-Z0-9_]*=[a-zA-Z_][a-zA-Z0-9_]*'
    r'(?:;[a-zA-Z_][a-zA-Z0-9_]*=[a-zA-Z_][a-zA-Z0-9_]*)*)"'
)


@dataclass(frozen=True)
class LintIssue:
    category: str
    message: str


def lint_language(rules_dir: Path, lang_code: str) -> list[LintIssue]:
    issues: list[LintIssue] = []
    language = load_language(rules_dir, lang_code)
    vocab = load_feature_vocabulary(rules_dir, lang_code)

    for category in language.categories:
        rule_path = category_rule_path(rules_dir, lang_code, category)
        source = rule_path.read_text(encoding="utf-8")

        for match in _FEATURE_KEY_RE.finditer(source):
            pairs = dict(pair.split("=", 1) for pair in match.group(1).split(";"))
            try:
                validate_features(vocab, pairs)
            except UnknownFeatureError as exc:
                issues.append(LintIssue(category=category, message=str(exc)))

        try:
            ctl = clingo.Control()
            ctl.add("base", [], f'input_lemma("__lint_probe__").\n{source}')
            ctl.ground([("base", [])], context=RuleContext())
        except RuntimeError as exc:
            issues.append(LintIssue(category=category, message=f"parse error: {exc}"))

    return issues
