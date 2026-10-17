from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml

from .features import load_feature_vocabulary, validate_features
from .runner import generate_forms


@dataclass(frozen=True)
class ParadigmCaseResult:
    lemma: str
    category: str
    features: dict[str, str]
    expected: str
    actual: str | None
    passed: bool
    error: str | None = None
    # admitted variants the case expects but the rules did not produce: "variety: form"
    missing_admitted: tuple[str, ...] = ()


def load_paradigm_fixtures(tests_dir: Path, lang_code: str) -> list[dict]:
    lang_dir = tests_dir / lang_code
    fixtures: list[dict] = []
    if not lang_dir.is_dir():
        return fixtures
    for path in sorted(lang_dir.glob("*.paradigm.yaml")):
        text = path.read_text(encoding="utf-8")
        fixtures.extend(doc for doc in yaml.safe_load_all(text) if doc)
    return fixtures


def _failure(
    lemma: object, category: object, features: object, expected: object, error: str
) -> ParadigmCaseResult:
    return ParadigmCaseResult(
        lemma=lemma,  # type: ignore[arg-type]
        category=category,  # type: ignore[arg-type]
        features=features,  # type: ignore[arg-type]
        expected=expected,  # type: ignore[arg-type]
        actual=None,
        passed=False,
        error=error,
    )


def _admitted(raw: object) -> list[tuple[str, str]]:
    """A case's ``admitted:`` mapping, ``{variety: form}`` or ``{variety: [form, ...]}``."""
    if raw is None:
        return []
    if not isinstance(raw, dict):
        raise TypeError("'admitted' must map a variety to a form or a list of forms")
    pairs = []
    for variety, forms in raw.items():
        for form in forms if isinstance(forms, list) else [forms]:
            pairs.append((str(variety), str(form)))
    return pairs


def run_paradigm_tests(
    rules_dir: Path, tests_dir: Path, lang_code: str
) -> list[ParadigmCaseResult]:
    """Run every golden-file case for a language.

    Never raises for a bad fixture: a typo'd feature, an undeclared category,
    a missing key, or an unparseable rule file is reported as a failed case so
    the rest of the suite still gets reported. This mirrors lint's
    "never crash, always report" contract.
    """
    results: list[ParadigmCaseResult] = []

    vocab = None
    vocab_error: str | None = None
    try:
        vocab = load_feature_vocabulary(rules_dir, lang_code)
    except Exception as exc:
        vocab_error = f"could not load feature vocabulary: {exc}"

    for fixture in load_paradigm_fixtures(tests_dir, lang_code):
        lemma = fixture.get("lemma")
        category = fixture.get("category")
        cases = fixture.get("cases")

        if lemma is None or category is None or cases is None:
            missing = [
                key for key in ("lemma", "category", "cases") if fixture.get(key) is None
            ]
            results.append(
                _failure(
                    lemma, category, {}, None,
                    f"malformed fixture: missing required key(s) {missing}",
                )
            )
            continue

        for case in cases:
            try:
                features = case["features"]
                expected = case["expected"]
                wanted = _admitted(case.get("admitted"))
            except (KeyError, TypeError) as exc:
                results.append(
                    _failure(
                        lemma, category, {}, None,
                        f"malformed case for lemma {lemma!r}: {exc}",
                    )
                )
                continue

            try:
                if vocab_error is not None:
                    raise ValueError(vocab_error)
                validate_features(vocab, features)
                generated = generate_forms(rules_dir, lang_code, category, lemma, features)
            except Exception as exc:
                results.append(
                    _failure(lemma, category, features, expected, str(exc))
                )
                continue

            missing = tuple(
                f"{variety}: {form}" for variety, form in wanted
                if (variety, form) not in generated.admitted
            )
            results.append(
                ParadigmCaseResult(
                    lemma=lemma,
                    category=category,
                    features=features,
                    expected=expected,
                    actual=generated.form,
                    passed=generated.form == expected and not missing,
                    error=f"admitted variant(s) not produced: {', '.join(missing)}" if missing else None,
                    missing_admitted=missing,
                )
            )
    return results
