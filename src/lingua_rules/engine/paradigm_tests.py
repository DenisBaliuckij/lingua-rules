from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml

from .runner import NoRuleMatchedError, generate_form


@dataclass(frozen=True)
class ParadigmCaseResult:
    lemma: str
    category: str
    features: dict[str, str]
    expected: str
    actual: str | None
    passed: bool
    error: str | None = None


def load_paradigm_fixtures(tests_dir: Path, lang_code: str) -> list[dict]:
    lang_dir = tests_dir / lang_code
    fixtures: list[dict] = []
    if not lang_dir.is_dir():
        return fixtures
    for path in sorted(lang_dir.glob("*.paradigm.yaml")):
        text = path.read_text(encoding="utf-8")
        fixtures.extend(doc for doc in yaml.safe_load_all(text) if doc)
    return fixtures


def run_paradigm_tests(
    rules_dir: Path, tests_dir: Path, lang_code: str
) -> list[ParadigmCaseResult]:
    results: list[ParadigmCaseResult] = []
    for fixture in load_paradigm_fixtures(tests_dir, lang_code):
        lemma = fixture["lemma"]
        category = fixture["category"]
        for case in fixture["cases"]:
            features = case["features"]
            expected = case["expected"]
            try:
                actual = generate_form(rules_dir, lang_code, category, lemma, features)
                results.append(
                    ParadigmCaseResult(
                        lemma=lemma,
                        category=category,
                        features=features,
                        expected=expected,
                        actual=actual,
                        passed=actual == expected,
                    )
                )
            except NoRuleMatchedError as exc:
                results.append(
                    ParadigmCaseResult(
                        lemma=lemma,
                        category=category,
                        features=features,
                        expected=expected,
                        actual=None,
                        passed=False,
                        error=str(exc),
                    )
                )
    return results
