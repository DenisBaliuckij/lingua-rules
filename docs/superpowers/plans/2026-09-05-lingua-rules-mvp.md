# lingua-rules MVP Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a working `lingua-rules` v1 — an engine that generates word forms from ASP/Clingo rule files, a CLI, a local web UI, and golden-file testing — covering everything in the design spec.

**Architecture:** A pure-Python `engine/` package loads per-language rule files (`.lp`, Clingo source) and a feature-dimension vocabulary, invokes the `clingo` solver (with a small Python "context" class exposing string-affix helper functions rules call via `@suffix(...)`), and reads the generated form back out of the resulting answer set. A Typer CLI and a FastAPI+Jinja2+HTMX web UI are both thin layers over this same engine. Golden-file YAML fixtures under `tests/<lang>/` drive an automated pass/fail test runner exposed from both interfaces.

**Tech Stack:** Python 3.11+, `clingo` (ASP solver bindings), `typer` (CLI), `fastapi` + `jinja2` + `uvicorn` (web), `pyyaml`, `pytest` + `httpx` (dev/test).

**Spec:** `docs/superpowers/specs/2026-09-05-lingua-rules-design.md`

## Global Constraints

- Python 3.11+, installed via `pip install -e ".[dev]"` — no external services, no Docker, no database (spec Non-goals / Packaging).
- Pytest unit tests live under `tests_unit/`, mirroring `src/lingua_rules/`. The repo-root `tests/` directory is reserved for linguist-authored golden-file paradigm fixtures (`tests/<lang>/*.paradigm.yaml`) per the spec — never put pytest source files there.
- Exceptions live inline in the same `<category>.lp` file as the general rules it overrides — one `.lp` file per declared category, per the spec's Repo layout section. (The spec's "Rule formalism" section shows the general rule and an exception in two separate code blocks for readability only — that is not a second file.)
- Rule-engine predicate convention (not fully pinned down in the spec; fixed here): every category's rule file produces facts of the shape `form(Lemma, FeatureKey, Form)`, where `FeatureKey` is the canonical string built by joining `dimension=value` pairs sorted by dimension name with `;` (e.g. `"number=plural"`, `"case=genitive;number=plural"`). The engine asserts the input lemma as `input_lemma(Lemma)` before grounding; rule files key their logic off that fact so one rule file works for any lemma, not just ones known in advance.
- Every engine-level error must raise a specific, named exception with a message a linguist can act on (which language/category/lemma/feature, and what's wrong) — never swallow errors or return silently empty results (spec Error handling).
- Web UI binds to `127.0.0.1` only, no authentication, single process (spec Non-goals).
- Whenever the CLI and the web UI need the same behavior (e.g. appending a rule-file scaffold from a template), that logic lives once in `engine/`, and both interfaces call it — never duplicated.

---

### Task 1: Project scaffolding

**Files:**
- Create: `pyproject.toml`
- Create: `src/lingua_rules/__init__.py`
- Create: `tests_unit/__init__.py`
- Test: `tests_unit/test_smoke.py`

**Interfaces:**
- Produces: an installable `lingua_rules` package (`import lingua_rules` works), a `pytest` run that discovers `tests_unit/`.

- [ ] **Step 1: Write the failing smoke test**

```python
# tests_unit/test_smoke.py
def test_package_importable():
    import lingua_rules

    assert lingua_rules is not None
```

- [ ] **Step 2: Run it to confirm it fails**

Run: `pytest tests_unit/test_smoke.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules'` — the package doesn't exist yet)

- [ ] **Step 3: Create the package and project files**

```python
# src/lingua_rules/__init__.py
```
(empty file — just makes the directory a package)

```python
# tests_unit/__init__.py
```
(empty file)

```toml
# pyproject.toml
[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"

[project]
name = "lingua-rules"
version = "0.1.0"
description = "A system for linguists to author, browse, and test natural language grammar rules."
requires-python = ">=3.11"
dependencies = [
    "clingo>=5.7",
    "typer>=0.12",
    "fastapi>=0.110",
    "jinja2>=3.1",
    "uvicorn>=0.29",
    "pyyaml>=6.0",
]

[project.optional-dependencies]
dev = [
    "pytest>=8.0",
    "httpx>=0.27",
]

[project.scripts]
lingua-rules = "lingua_rules.cli.main:app"

[tool.hatch.build.targets.wheel]
packages = ["src/lingua_rules"]

[tool.pytest.ini_options]
testpaths = ["tests_unit"]
```

- [ ] **Step 4: Install and run the test**

Run: `pip install -e ".[dev]" && pytest tests_unit/test_smoke.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add pyproject.toml src/lingua_rules/__init__.py tests_unit/__init__.py tests_unit/test_smoke.py
git commit -m "chore: scaffold lingua-rules package"
```

---

### Task 2: Language/category loader + English reference fixture

**Files:**
- Create: `src/lingua_rules/engine/__init__.py`
- Create: `src/lingua_rules/engine/loader.py`
- Create: `rules/en/lang.yaml`
- Create: `rules/en/features.yaml`
- Create: `rules/en/nouns.lp`
- Test: `tests_unit/engine/test_loader.py`
- Test: `tests_unit/engine/__init__.py`

**Interfaces:**
- Consumes: nothing (first engine module).
- Produces:
  - `LanguageInfo(code: str, name: str, iso639_3: str | None, categories: list[str])`
  - `LanguageNotFoundError(Exception)`, `CategoryNotFoundError(Exception)`
  - `load_language(rules_dir: Path, lang_code: str) -> LanguageInfo`
  - `language_dir(rules_dir: Path, lang_code: str) -> Path`
  - `category_rule_path(rules_dir: Path, lang_code: str, category: str) -> Path`
  - A checked-in `rules/en/` reference fixture (English noun pluralization, regular + one exception) used by every later integration test.

- [ ] **Step 1: Write the failing loader tests**

```python
# tests_unit/engine/__init__.py
```
(empty file)

```python
# tests_unit/engine/test_loader.py
from pathlib import Path

import pytest

from lingua_rules.engine.loader import (
    CategoryNotFoundError,
    LanguageNotFoundError,
    category_rule_path,
    load_language,
)


def _write_minimal_language(tmp_path: Path) -> Path:
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test Language\niso639_3: xxx\ncategories: [nouns]\n",
        encoding="utf-8",
    )
    (lang_dir / "nouns.lp").write_text("", encoding="utf-8")
    return tmp_path


def test_load_language_reads_metadata(tmp_path):
    rules_dir = _write_minimal_language(tmp_path)

    info = load_language(rules_dir, "xx")

    assert info.code == "xx"
    assert info.name == "Test Language"
    assert info.iso639_3 == "xxx"
    assert info.categories == ["nouns"]


def test_load_language_raises_for_unknown_language(tmp_path):
    with pytest.raises(LanguageNotFoundError):
        load_language(tmp_path, "zz")


def test_category_rule_path_returns_lp_file(tmp_path):
    rules_dir = _write_minimal_language(tmp_path)

    path = category_rule_path(rules_dir, "xx", "nouns")

    assert path == rules_dir / "xx" / "nouns.lp"


def test_category_rule_path_raises_for_undeclared_category(tmp_path):
    rules_dir = _write_minimal_language(tmp_path)

    with pytest.raises(CategoryNotFoundError):
        category_rule_path(rules_dir, "xx", "verbs")
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_loader.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine'`)

- [ ] **Step 3: Implement the loader**

```python
# src/lingua_rules/engine/__init__.py
```
(empty file)

```python
# src/lingua_rules/engine/loader.py
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml


class LanguageNotFoundError(Exception):
    """Raised when no language directory exists for the requested code."""


class CategoryNotFoundError(Exception):
    """Raised when a requested category isn't declared for a language."""


@dataclass(frozen=True)
class LanguageInfo:
    code: str
    name: str
    iso639_3: str | None
    categories: list[str]


def language_dir(rules_dir: Path, lang_code: str) -> Path:
    lang_dir = rules_dir / lang_code
    if not lang_dir.is_dir():
        raise LanguageNotFoundError(
            f"no language '{lang_code}' found under {rules_dir}"
        )
    return lang_dir


def load_language(rules_dir: Path, lang_code: str) -> LanguageInfo:
    lang_dir = language_dir(rules_dir, lang_code)
    data = yaml.safe_load((lang_dir / "lang.yaml").read_text(encoding="utf-8"))
    return LanguageInfo(
        code=lang_code,
        name=data["name"],
        iso639_3=data.get("iso639_3"),
        categories=list(data.get("categories", [])),
    )


def category_rule_path(rules_dir: Path, lang_code: str, category: str) -> Path:
    language = load_language(rules_dir, lang_code)
    if category not in language.categories:
        available = ", ".join(language.categories) or "none"
        raise CategoryNotFoundError(
            f"language '{lang_code}' has no category '{category}' "
            f"(available: {available})"
        )
    return language_dir(rules_dir, lang_code) / f"{category}.lp"
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/engine/test_loader.py -v`
Expected: PASS

- [ ] **Step 5: Add the checked-in English reference fixture**

```yaml
# rules/en/lang.yaml
name: English
iso639_3: eng
categories:
  - nouns
```

```yaml
# rules/en/features.yaml
dimensions:
  number:
    values: [singular, plural]
```

```prolog
% rules/en/nouns.lp
% English noun pluralization. Regular nouns take an "s" suffix; any lemma
% flagged irregular/1 is excluded from the regular rule via default negation
% and gets its plural form from an explicit exception fact instead.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma), not irregular(Lemma).

irregular("child").
form("child", "number=plural", "children").
```

- [ ] **Step 6: Commit**

```bash
git add src/lingua_rules/engine/ tests_unit/engine/ rules/en/
git commit -m "feat: add language/category loader and English reference rule set"
```

---

### Task 3: Feature vocabulary validation

**Files:**
- Create: `src/lingua_rules/engine/features.py`
- Test: `tests_unit/engine/test_features.py`

**Interfaces:**
- Consumes: `loader.language_dir` (Task 2).
- Produces:
  - `FeatureVocabulary(dimensions: dict[str, list[str]])`
  - `UnknownFeatureError(Exception)`
  - `load_feature_vocabulary(rules_dir: Path, lang_code: str) -> FeatureVocabulary`
  - `validate_features(vocab: FeatureVocabulary, features: dict[str, str]) -> None`
  - `feature_key(features: dict[str, str]) -> str`

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/engine/test_features.py
import pytest

from lingua_rules.engine.features import (
    UnknownFeatureError,
    feature_key,
    load_feature_vocabulary,
    validate_features,
)


def test_load_feature_vocabulary_reads_dimensions():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    assert vocab.dimensions["number"] == ["singular", "plural"]


def test_validate_features_accepts_known_dimension_and_value():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    validate_features(vocab, {"number": "plural"})  # must not raise


def test_validate_features_rejects_unknown_dimension():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    with pytest.raises(UnknownFeatureError):
        validate_features(vocab, {"case": "genitive"})


def test_validate_features_rejects_unknown_value():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    with pytest.raises(UnknownFeatureError):
        validate_features(vocab, {"number": "dual"})


def test_feature_key_sorts_dimensions_for_a_canonical_string():
    assert feature_key({"number": "plural", "case": "genitive"}) == "case=genitive;number=plural"
    assert feature_key({"number": "plural"}) == "number=plural"
```

Note: these tests read the real `rules/en/` fixture committed in Task 2, so run pytest from the repo root (`C:/Repositories/lingua-rules`).

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_features.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.features'`)

- [ ] **Step 3: Implement feature vocabulary handling**

```python
# src/lingua_rules/engine/features.py
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml

from .loader import language_dir


class UnknownFeatureError(Exception):
    """Raised when a feature bundle uses an undeclared dimension or value."""


@dataclass(frozen=True)
class FeatureVocabulary:
    dimensions: dict[str, list[str]]


def load_feature_vocabulary(rules_dir: Path, lang_code: str) -> FeatureVocabulary:
    lang_dir = language_dir(rules_dir, lang_code)
    data = yaml.safe_load((lang_dir / "features.yaml").read_text(encoding="utf-8"))
    dimensions = {
        name: list(spec["values"]) for name, spec in data["dimensions"].items()
    }
    return FeatureVocabulary(dimensions=dimensions)


def validate_features(vocab: FeatureVocabulary, features: dict[str, str]) -> None:
    for dimension, value in features.items():
        if dimension not in vocab.dimensions:
            declared = ", ".join(vocab.dimensions) or "none"
            raise UnknownFeatureError(
                f"unknown feature dimension '{dimension}' (declared: {declared})"
            )
        if value not in vocab.dimensions[dimension]:
            declared = ", ".join(vocab.dimensions[dimension]) or "none"
            raise UnknownFeatureError(
                f"unknown value '{value}' for dimension '{dimension}' "
                f"(declared: {declared})"
            )


def feature_key(features: dict[str, str]) -> str:
    return ";".join(f"{k}={v}" for k, v in sorted(features.items()))
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/engine/test_features.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/engine/features.py tests_unit/engine/test_features.py
git commit -m "feat: add feature vocabulary loading and validation"
```

---

### Task 4: Clingo transform context (string-affix helpers)

**Files:**
- Create: `src/lingua_rules/engine/transforms.py`
- Test: `tests_unit/engine/test_transforms.py`

**Interfaces:**
- Consumes: nothing.
- Produces: `RuleContext` class with methods `suffix(lemma, suffix) -> Symbol`, `strip_suffix_add(lemma, strip_len, add) -> Symbol`, `prefix(lemma, prefix_str) -> Symbol` — a Clingo grounding "context" object, passed to `ctl.ground(..., context=RuleContext())` so `.lp` rule files can call `@suffix(...)`, `@strip_suffix_add(...)`, `@prefix(...)`.

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/engine/test_transforms.py
from clingo.symbol import Number, String

from lingua_rules.engine.transforms import RuleContext


def test_suffix_appends_the_given_suffix():
    ctx = RuleContext()

    result = ctx.suffix(String("cat"), String("s"))

    assert result.string == "cats"


def test_strip_suffix_add_replaces_the_stripped_ending():
    ctx = RuleContext()

    result = ctx.strip_suffix_add(String("wolf"), Number(1), String("ves"))

    assert result.string == "wolves"


def test_strip_suffix_add_with_zero_strip_just_appends():
    ctx = RuleContext()

    result = ctx.strip_suffix_add(String("cat"), Number(0), String("s"))

    assert result.string == "cats"


def test_prefix_prepends_the_given_prefix():
    ctx = RuleContext()

    result = ctx.prefix(String("do"), String("un"))

    assert result.string == "undo"
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_transforms.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.transforms'`)

- [ ] **Step 3: Implement the transform context**

```python
# src/lingua_rules/engine/transforms.py
from __future__ import annotations

from clingo.symbol import String, Symbol


class RuleContext:
    """Exposes string-transform helpers to Clingo rule files via @-calls.

    Clingo has no native string-concatenation operator, so rule files call
    these Python functions (e.g. `@suffix(Lemma, "s")`) instead of trying to
    splice strings in ASP itself.
    """

    def suffix(self, lemma: Symbol, suffix: Symbol) -> Symbol:
        return String(lemma.string + suffix.string)

    def strip_suffix_add(self, lemma: Symbol, strip_len: Symbol, add: Symbol) -> Symbol:
        n = strip_len.number
        base = lemma.string[: len(lemma.string) - n] if n > 0 else lemma.string
        return String(base + add.string)

    def prefix(self, lemma: Symbol, prefix_str: Symbol) -> Symbol:
        return String(prefix_str.string + lemma.string)
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/engine/test_transforms.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/engine/transforms.py tests_unit/engine/test_transforms.py
git commit -m "feat: add Clingo grounding context with string-affix helpers"
```

---

### Task 5: Rule runner (generate a form via Clingo)

**Files:**
- Create: `src/lingua_rules/engine/runner.py`
- Test: `tests_unit/engine/test_runner.py`

**Interfaces:**
- Consumes: `loader.category_rule_path` (Task 2), `features.feature_key` (Task 3), `transforms.RuleContext` (Task 4).
- Produces: `NoRuleMatchedError(Exception)`, `generate_form(rules_dir: Path, lang_code: str, category: str, lemma: str, features: dict[str, str]) -> str`.

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/engine/test_runner.py
from pathlib import Path

import pytest

from lingua_rules.engine.runner import NoRuleMatchedError, generate_form

RULES_DIR = Path("rules")


def test_generate_form_applies_the_regular_plural_rule():
    assert generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "plural"}) == "cats"


def test_generate_form_singular_is_the_lemma_itself():
    assert generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "singular"}) == "cat"


def test_generate_form_uses_the_exception_instead_of_the_regular_rule():
    assert generate_form(RULES_DIR, "en", "nouns", "child", {"number": "plural"}) == "children"


def test_generate_form_raises_when_no_rule_produces_a_form():
    with pytest.raises(NoRuleMatchedError):
        generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "dual"})
```

Run pytest from the repo root so the relative `rules/` path resolves.

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_runner.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.runner'`)

- [ ] **Step 3: Implement the runner**

```python
# src/lingua_rules/engine/runner.py
from __future__ import annotations

from pathlib import Path

import clingo

from .features import feature_key
from .loader import category_rule_path
from .transforms import RuleContext


class NoRuleMatchedError(Exception):
    """Raised when no rule in the category produces a form for the request."""


def _escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def generate_form(
    rules_dir: Path,
    lang_code: str,
    category: str,
    lemma: str,
    features: dict[str, str],
) -> str:
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
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/engine/test_runner.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/engine/runner.py tests_unit/engine/test_runner.py
git commit -m "feat: generate word forms by running category rule files through Clingo"
```

---

### Task 6: Golden-file paradigm test runner

**Files:**
- Create: `src/lingua_rules/engine/paradigm_tests.py`
- Create: `tests/en/nouns.paradigm.yaml`
- Test: `tests_unit/engine/test_paradigm_tests.py`

**Interfaces:**
- Consumes: `runner.generate_form`, `runner.NoRuleMatchedError` (Task 5).
- Produces:
  - `ParadigmCaseResult(lemma: str, category: str, features: dict[str, str], expected: str, actual: str | None, passed: bool, error: str | None = None)`
  - `load_paradigm_fixtures(tests_dir: Path, lang_code: str) -> list[dict]`
  - `run_paradigm_tests(rules_dir: Path, tests_dir: Path, lang_code: str) -> list[ParadigmCaseResult]`

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/engine/test_paradigm_tests.py
from pathlib import Path

from lingua_rules.engine.paradigm_tests import run_paradigm_tests

RULES_DIR = Path("rules")
TESTS_DIR = Path("tests")


def test_run_paradigm_tests_reports_all_cases_for_the_english_fixture():
    results = run_paradigm_tests(RULES_DIR, TESTS_DIR, "en")

    assert len(results) == 3
    assert all(r.passed for r in results)


def test_run_paradigm_tests_flags_a_mismatch(tmp_path):
    rules_dir = tmp_path / "rules" / "xx"
    rules_dir.mkdir(parents=True)
    (rules_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (rules_dir / "nouns.lp").write_text(
        'form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma).\n',
        encoding="utf-8",
    )
    tests_dir = tmp_path / "tests" / "xx"
    tests_dir.mkdir(parents=True)
    (tests_dir / "nouns.paradigm.yaml").write_text(
        "lemma: cat\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: wrong-answer\n",
        encoding="utf-8",
    )

    results = run_paradigm_tests(tmp_path / "rules", tmp_path / "tests", "xx")

    assert len(results) == 1
    assert results[0].passed is False
    assert results[0].actual == "cats"
    assert results[0].expected == "wrong-answer"
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_paradigm_tests.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.paradigm_tests'`, and the fixture file doesn't exist yet either)

- [ ] **Step 3: Add the English golden-file fixture**

```yaml
# tests/en/nouns.paradigm.yaml
lemma: cat
category: nouns
cases:
  - features: {number: plural}
    expected: cats
  - features: {number: singular}
    expected: cat
---
lemma: child
category: nouns
cases:
  - features: {number: plural}
    expected: children
```

- [ ] **Step 4: Implement the paradigm test runner**

```python
# src/lingua_rules/engine/paradigm_tests.py
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
```

- [ ] **Step 5: Run tests to confirm they pass**

Run: `pytest tests_unit/engine/test_paradigm_tests.py -v`
Expected: PASS

- [ ] **Step 6: Commit**

```bash
git add src/lingua_rules/engine/paradigm_tests.py tests_unit/engine/test_paradigm_tests.py tests/en/nouns.paradigm.yaml
git commit -m "feat: add golden-file paradigm test runner and English fixtures"
```

---

### Task 7: CLI — `generate` and `test` commands

**Files:**
- Create: `src/lingua_rules/cli/__init__.py`
- Create: `src/lingua_rules/cli/main.py`
- Test: `tests_unit/cli/__init__.py`
- Test: `tests_unit/cli/test_generate_and_test_commands.py`

**Interfaces:**
- Consumes: `features.load_feature_vocabulary`, `features.validate_features`, `features.UnknownFeatureError` (Task 3); `runner.generate_form`, `runner.NoRuleMatchedError` (Task 5); `paradigm_tests.run_paradigm_tests` (Task 6).
- Produces: Typer `app` with commands `generate` and `test`, importable as `lingua_rules.cli.main:app` (matches the `[project.scripts]` entry point from Task 1).

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/cli/__init__.py
```
(empty file)

```python
# tests_unit/cli/test_generate_and_test_commands.py
from typer.testing import CliRunner

from lingua_rules.cli.main import app

runner = CliRunner()


def test_generate_prints_the_generated_form():
    result = runner.invoke(
        app,
        [
            "generate", "en", "nouns", "cat",
            "--features", "number=plural",
            "--rules-dir", "rules",
        ],
    )

    assert result.exit_code == 0
    assert result.stdout.strip() == "cats"


def test_generate_reports_an_unknown_feature_and_exits_nonzero():
    result = runner.invoke(
        app,
        [
            "generate", "en", "nouns", "cat",
            "--features", "case=genitive",
            "--rules-dir", "rules",
        ],
    )

    assert result.exit_code == 1
    assert "unknown feature dimension" in result.stdout


def test_test_command_reports_all_english_fixtures_passing():
    result = runner.invoke(
        app, ["test", "en", "--rules-dir", "rules", "--tests-dir", "tests"]
    )

    assert result.exit_code == 0
    assert "3/3 passed" in result.stdout
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/cli/test_generate_and_test_commands.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.cli'`)

- [ ] **Step 3: Implement the CLI**

```python
# src/lingua_rules/cli/__init__.py
```
(empty file)

```python
# src/lingua_rules/cli/main.py
from __future__ import annotations

from pathlib import Path

import typer

from lingua_rules.engine.features import (
    UnknownFeatureError,
    load_feature_vocabulary,
    validate_features,
)
from lingua_rules.engine.paradigm_tests import run_paradigm_tests
from lingua_rules.engine.runner import NoRuleMatchedError, generate_form

app = typer.Typer(help="Author, browse, and test natural language grammar rules.")


def _parse_features(raw: str) -> dict[str, str]:
    features: dict[str, str] = {}
    if not raw:
        return features
    for pair in raw.split(","):
        key, _, value = pair.partition("=")
        if not value:
            raise typer.BadParameter(f"malformed feature '{pair}', expected key=value")
        features[key.strip()] = value.strip()
    return features


@app.command()
def generate(
    lang: str,
    category: str,
    lemma: str,
    features: str = typer.Option(
        "", "--features", help="comma-separated key=value pairs, e.g. number=plural"
    ),
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
) -> None:
    """Generate a word form for LEMMA in CATEGORY for LANG."""
    parsed = _parse_features(features)
    try:
        vocab = load_feature_vocabulary(rules_dir, lang)
        validate_features(vocab, parsed)
        form = generate_form(rules_dir, lang, category, lemma, parsed)
    except (UnknownFeatureError, NoRuleMatchedError) as exc:
        typer.echo(f"error: {exc}")
        raise typer.Exit(code=1)
    typer.echo(form)


@app.command(name="test")
def run_tests(
    lang: str,
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
    tests_dir: Path = typer.Option(Path("tests"), "--tests-dir"),
) -> None:
    """Run golden-file paradigm tests for LANG."""
    results = run_paradigm_tests(rules_dir, tests_dir, lang)
    failed = 0
    for result in results:
        status = "PASS" if result.passed else "FAIL"
        if not result.passed:
            failed += 1
        typer.echo(
            f"[{status}] {result.lemma} {result.features} "
            f"expected={result.expected!r} actual={result.actual!r}"
        )
    typer.echo(f"{len(results) - failed}/{len(results)} passed")
    if failed:
        raise typer.Exit(code=1)


if __name__ == "__main__":
    app()
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/cli/test_generate_and_test_commands.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/cli/ tests_unit/cli/
git commit -m "feat: add generate and test CLI commands"
```

---

### Task 8: CLI — `lint` and `new-rule` commands

**Files:**
- Create: `src/lingua_rules/engine/templates.py`
- Create: `src/lingua_rules/engine/lint.py`
- Modify: `src/lingua_rules/cli/main.py`
- Test: `tests_unit/engine/test_templates.py`
- Test: `tests_unit/engine/test_lint.py`
- Test: `tests_unit/cli/test_lint_and_new_rule_commands.py`

**Interfaces:**
- Consumes: `loader.category_rule_path`, `loader.load_language` (Task 2); `features.load_feature_vocabulary`, `features.validate_features`, `features.UnknownFeatureError` (Task 3); `transforms.RuleContext` (Task 4).
- Produces:
  - `templates.append_rule(rules_dir: Path, lang_code: str, category: str, template_name: str, **kwargs: str) -> Path` — shared by both the CLI and (in Task 12) the web UI.
  - `lint.LintIssue(category: str, message: str)`, `lint.lint_language(rules_dir: Path, lang_code: str) -> list[LintIssue]`.
  - CLI commands `lint` and `new-rule` on the existing Typer `app`.

- [ ] **Step 1: Write the failing template tests**

```python
# tests_unit/engine/test_templates.py
from pathlib import Path

import pytest

from lingua_rules.engine.templates import append_rule


def _write_minimal_category(tmp_path: Path) -> Path:
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (lang_dir / "nouns.lp").write_text("% existing rules\n", encoding="utf-8")
    return tmp_path


def test_append_rule_writes_a_regular_affix_block(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    path = append_rule(
        rules_dir, "xx", "nouns", "regular-affix",
        feature_key="number=plural", suffix="s",
    )

    content = path.read_text(encoding="utf-8")
    assert "% existing rules" in content
    assert '@suffix(Lemma, "s")' in content
    assert '"number=plural"' in content


def test_append_rule_writes_an_exception_override_block(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    path = append_rule(
        rules_dir, "xx", "nouns", "exception-override",
        lemma="child", feature_key="number=plural", form="children",
    )

    content = path.read_text(encoding="utf-8")
    assert 'irregular("child")' in content
    assert 'form("child", "number=plural", "children")' in content


def test_append_rule_rejects_an_unknown_template(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(ValueError):
        append_rule(rules_dir, "xx", "nouns", "not-a-real-template")
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_templates.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.templates'`)

- [ ] **Step 3: Implement templates**

```python
# src/lingua_rules/engine/templates.py
from __future__ import annotations

from pathlib import Path

from .loader import category_rule_path

REGULAR_AFFIX_TEMPLATE = (
    "\n"
    "% describe the paradigm this rule covers here\n"
    'form(Lemma, "{feature_key}", @suffix(Lemma, "{suffix}")) :- '
    "input_lemma(Lemma), not irregular(Lemma).\n"
)

EXCEPTION_OVERRIDE_TEMPLATE = (
    "\n"
    'irregular("{lemma}").\n'
    'form("{lemma}", "{feature_key}", "{form}").\n'
)

_TEMPLATES = {
    "regular-affix": REGULAR_AFFIX_TEMPLATE,
    "exception-override": EXCEPTION_OVERRIDE_TEMPLATE,
}


def append_rule(
    rules_dir: Path, lang_code: str, category: str, template_name: str, **kwargs: str
) -> Path:
    template = _TEMPLATES.get(template_name)
    if template is None:
        known = ", ".join(_TEMPLATES)
        raise ValueError(f"unknown template '{template_name}' (known: {known})")

    rule_path = category_rule_path(rules_dir, lang_code, category)
    block = template.format(**kwargs)
    with rule_path.open("a", encoding="utf-8") as fh:
        fh.write(block)
    return rule_path
```

- [ ] **Step 4: Run template tests to confirm they pass**

Run: `pytest tests_unit/engine/test_templates.py -v`
Expected: PASS

- [ ] **Step 5: Write the failing lint tests**

```python
# tests_unit/engine/test_lint.py
from pathlib import Path

from lingua_rules.engine.lint import lint_language


def _write_language(tmp_path: Path, nouns_lp: str) -> Path:
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n", encoding="utf-8"
    )
    (lang_dir / "nouns.lp").write_text(nouns_lp, encoding="utf-8")
    return tmp_path


def test_lint_language_reports_no_issues_for_valid_rules(tmp_path):
    rules_dir = _write_language(
        tmp_path,
        'form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma).\n',
    )

    issues = lint_language(rules_dir, "xx")

    assert issues == []


def test_lint_language_flags_an_undeclared_feature_value(tmp_path):
    rules_dir = _write_language(
        tmp_path,
        'form(Lemma, "number=dual", @suffix(Lemma, "s")) :- input_lemma(Lemma).\n',
    )

    issues = lint_language(rules_dir, "xx")

    assert len(issues) == 1
    assert "number" in issues[0].message


def test_lint_language_flags_a_clingo_parse_error(tmp_path):
    rules_dir = _write_language(tmp_path, "this is not valid ASP (((\n")

    issues = lint_language(rules_dir, "xx")

    assert any("parse error" in issue.message for issue in issues)
```

- [ ] **Step 6: Run tests to confirm they fail**

Run: `pytest tests_unit/engine/test_lint.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.engine.lint'`)

- [ ] **Step 7: Implement lint**

```python
# src/lingua_rules/engine/lint.py
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
```

- [ ] **Step 8: Run lint tests to confirm they pass**

Run: `pytest tests_unit/engine/test_lint.py -v`
Expected: PASS

- [ ] **Step 9: Write the failing CLI tests for `lint` and `new-rule`**

```python
# tests_unit/cli/test_lint_and_new_rule_commands.py
import shutil
from pathlib import Path

from typer.testing import CliRunner

from lingua_rules.cli.main import app

runner = CliRunner()


def test_lint_reports_no_issues_for_the_english_fixture():
    result = runner.invoke(app, ["lint", "en", "--rules-dir", "rules"])

    assert result.exit_code == 0
    assert "no issues" in result.stdout


def test_new_rule_appends_a_regular_affix_scaffold(tmp_path):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)

    result = runner.invoke(
        app,
        [
            "new-rule", "en", "nouns",
            "--template", "regular-affix",
            "--feature-key", "number=plural",
            "--suffix", "s",
            "--rules-dir", str(rules_dir),
        ],
    )

    assert result.exit_code == 0
    assert "appended" in result.stdout
    assert '@suffix(Lemma, "s")' in (rules_dir / "en" / "nouns.lp").read_text(encoding="utf-8")
```

- [ ] **Step 10: Run tests to confirm they fail**

Run: `pytest tests_unit/cli/test_lint_and_new_rule_commands.py -v`
Expected: FAIL (`typer.testing` reports no such command `lint`/`new-rule`)

- [ ] **Step 11: Add the commands to the CLI**

Add to `src/lingua_rules/cli/main.py` (alongside the existing imports and commands from Task 7):

```python
from lingua_rules.engine.lint import lint_language
from lingua_rules.engine.templates import append_rule


@app.command()
def lint(
    lang: str,
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
) -> None:
    """Validate LANG's rule files: Clingo parse errors and undeclared feature usage."""
    issues = lint_language(rules_dir, lang)
    if not issues:
        typer.echo(f"{lang}: no issues found")
        return
    for issue in issues:
        typer.echo(f"[{issue.category}] {issue.message}")
    raise typer.Exit(code=1)


@app.command(name="new-rule")
def new_rule(
    lang: str,
    category: str,
    template: str = typer.Option(..., "--template", help="regular-affix or exception-override"),
    feature_key: str = typer.Option(..., "--feature-key", help='e.g. "number=plural"'),
    suffix: str = typer.Option("", "--suffix"),
    lemma: str = typer.Option("", "--lemma"),
    form: str = typer.Option("", "--form"),
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
) -> None:
    """Append a rule scaffold from TEMPLATE to CATEGORY's rule file for LANG."""
    try:
        path = append_rule(
            rules_dir, lang, category, template,
            feature_key=feature_key, suffix=suffix, lemma=lemma, form=form,
        )
    except ValueError as exc:
        typer.echo(f"error: {exc}")
        raise typer.Exit(code=1)
    typer.echo(f"appended {template} scaffold to {path}")
```

- [ ] **Step 12: Run tests to confirm they pass**

Run: `pytest tests_unit/cli/test_lint_and_new_rule_commands.py -v`
Expected: PASS

- [ ] **Step 13: Commit**

```bash
git add src/lingua_rules/engine/templates.py src/lingua_rules/engine/lint.py src/lingua_rules/cli/main.py tests_unit/engine/test_templates.py tests_unit/engine/test_lint.py tests_unit/cli/test_lint_and_new_rule_commands.py
git commit -m "feat: add lint and new-rule CLI commands"
```

---

### Task 9: Web UI — app skeleton + language/category browser

**Files:**
- Create: `src/lingua_rules/web/__init__.py`
- Create: `src/lingua_rules/web/app.py`
- Create: `src/lingua_rules/web/templates/base.html`
- Create: `src/lingua_rules/web/templates/index.html`
- Create: `src/lingua_rules/web/templates/category.html`
- Test: `tests_unit/web/__init__.py`
- Test: `tests_unit/web/test_browser_routes.py`

**Interfaces:**
- Consumes: `loader.load_language`, `loader.category_rule_path`, `loader.LanguageNotFoundError`, `loader.CategoryNotFoundError` (Task 2); `features.load_feature_vocabulary` (Task 3).
- Produces: FastAPI `app` object (`lingua_rules.web.app:app`); `get_rules_dir() -> Path` and `get_tests_dir() -> Path` dependency functions (read `LINGUA_RULES_DIR` / `LINGUA_TESTS_DIR` env vars at request time, defaulting to `Path("rules")` / `Path("tests")`) that later web tasks reuse.

**Route naming note:** category-scoped pages live under `/{lang}/category/{category}[...]` (not bare `/{lang}/{category}`) specifically so that Task 11's `/{lang}/tests` route — a 2-path-segment route, same shape as `/{lang}/{category}` would have been — can never be shadowed by the category route. Keep this prefix in every task below that adds a category-scoped route.

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/web/__init__.py
```
(empty file)

```python
# tests_unit/web/test_browser_routes.py
from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_index_lists_the_english_language():
    response = client.get("/")

    assert response.status_code == 200
    assert "English" in response.text


def test_category_page_shows_rule_source_and_feature_vocabulary():
    response = client.get("/en/category/nouns")

    assert response.status_code == 200
    assert "irregular" in response.text
    assert "number" in response.text


def test_category_page_404s_for_an_unknown_language():
    response = client.get("/zz/category/nouns")

    assert response.status_code == 404
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/web/test_browser_routes.py -v`
Expected: FAIL (`ModuleNotFoundError: No module named 'lingua_rules.web'`)

- [ ] **Step 3: Implement the app skeleton and browser routes**

```python
# src/lingua_rules/web/__init__.py
```
(empty file)

```python
# src/lingua_rules/web/app.py
from __future__ import annotations

import os
from pathlib import Path

from fastapi import Depends, FastAPI, HTTPException, Request
from fastapi.templating import Jinja2Templates

from lingua_rules.engine.features import load_feature_vocabulary
from lingua_rules.engine.loader import (
    CategoryNotFoundError,
    LanguageNotFoundError,
    category_rule_path,
    load_language,
)

app = FastAPI(title="lingua-rules")

_TEMPLATES_DIR = Path(__file__).parent / "templates"
templates = Jinja2Templates(directory=str(_TEMPLATES_DIR))


def get_rules_dir() -> Path:
    return Path(os.environ.get("LINGUA_RULES_DIR", "rules"))


def get_tests_dir() -> Path:
    return Path(os.environ.get("LINGUA_TESTS_DIR", "tests"))


@app.get("/")
def index(request: Request, rules_dir: Path = Depends(get_rules_dir)):
    languages = []
    if rules_dir.is_dir():
        for entry in sorted(p.name for p in rules_dir.iterdir() if p.is_dir()):
            try:
                languages.append(load_language(rules_dir, entry))
            except LanguageNotFoundError:
                continue
    return templates.TemplateResponse(
        request, "index.html", {"languages": languages}
    )


@app.get("/{lang}/category/{category}")
def category_page(
    request: Request,
    lang: str,
    category: str,
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        rule_path = category_rule_path(rules_dir, lang, category)
        vocab = load_feature_vocabulary(rules_dir, lang)
    except (LanguageNotFoundError, CategoryNotFoundError) as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    source = rule_path.read_text(encoding="utf-8")
    return templates.TemplateResponse(
        request,
        "category.html",
        {"lang": lang, "category": category, "source": source, "vocab": vocab},
    )
```

```html
{# src/lingua_rules/web/templates/base.html #}
<!doctype html>
<html>
<head><title>lingua-rules</title></head>
<body>
{% block content %}{% endblock %}
</body>
</html>
```

```html
{# src/lingua_rules/web/templates/index.html #}
{% extends "base.html" %}
{% block content %}
<h1>Languages</h1>
<ul>
  {% for language in languages %}
  <li>{{ language.name }} ({{ language.code }})
    <ul>
      {% for category in language.categories %}
      <li><a href="/{{ language.code }}/category/{{ category }}">{{ category }}</a></li>
      {% endfor %}
    </ul>
  </li>
  {% endfor %}
</ul>
{% endblock %}
```

```html
{# src/lingua_rules/web/templates/category.html #}
{% extends "base.html" %}
{% block content %}
<h1>{{ lang }} / {{ category }}</h1>
<h2>Feature vocabulary</h2>
<ul>
  {% for dimension, values in vocab.dimensions.items() %}
  <li>{{ dimension }}: {{ values|join(", ") }}</li>
  {% endfor %}
</ul>
<h2>Rule source</h2>
<pre>{{ source }}</pre>
{% endblock %}
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/web/test_browser_routes.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/web/ tests_unit/web/
git commit -m "feat: add web UI language/category browser"
```

---

### Task 10: Web UI — "try it" panel

**Files:**
- Modify: `src/lingua_rules/web/app.py`
- Create: `src/lingua_rules/web/templates/try_it.html`
- Create: `src/lingua_rules/web/templates/try_it_result.html`
- Test: `tests_unit/web/test_try_it.py`

**Interfaces:**
- Consumes: `runner.generate_form`, `runner.NoRuleMatchedError` (Task 5); `features.load_feature_vocabulary`, `features.validate_features`, `features.UnknownFeatureError` (Task 3); `get_rules_dir` (Task 9).
- Produces: `GET /{lang}/category/{category}/try` (form page), `POST /{lang}/category/{category}/try` (HTMX partial with the result or an error).

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/web/test_try_it.py
from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_try_it_form_page_lists_feature_dimensions():
    response = client.get("/en/category/nouns/try")

    assert response.status_code == 200
    assert "number" in response.text


def test_try_it_post_returns_the_generated_form():
    response = client.post("/en/category/nouns/try", data={"lemma": "cat", "number": "plural"})

    assert response.status_code == 200
    assert "cats" in response.text


def test_try_it_post_reports_an_unknown_feature_value():
    response = client.post("/en/category/nouns/try", data={"lemma": "cat", "number": "dual"})

    assert response.status_code == 200
    assert "unknown value" in response.text
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/web/test_try_it.py -v`
Expected: FAIL (404 on `/en/category/nouns/try`)

- [ ] **Step 3: Add the try-it routes**

Add to `src/lingua_rules/web/app.py`:

```python
from fastapi import Form

from lingua_rules.engine.features import UnknownFeatureError, validate_features
from lingua_rules.engine.runner import NoRuleMatchedError, generate_form


@app.get("/{lang}/category/{category}/try")
def try_it_form(
    request: Request,
    lang: str,
    category: str,
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        vocab = load_feature_vocabulary(rules_dir, lang)
    except LanguageNotFoundError as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    return templates.TemplateResponse(
        request,
        "try_it.html",
        {"lang": lang, "category": category, "vocab": vocab},
    )


@app.post("/{lang}/category/{category}/try")
async def try_it_submit(
    request: Request,
    lang: str,
    category: str,
    lemma: str = Form(...),
    rules_dir: Path = Depends(get_rules_dir),
):
    form_data = await request.form()
    features = {
        key: value for key, value in form_data.items() if key != "lemma"
    }
    result: str | None = None
    error: str | None = None
    try:
        vocab = load_feature_vocabulary(rules_dir, lang)
        validate_features(vocab, features)
        result = generate_form(rules_dir, lang, category, lemma, features)
    except (LanguageNotFoundError, CategoryNotFoundError) as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    except (UnknownFeatureError, NoRuleMatchedError) as exc:
        error = str(exc)
    return templates.TemplateResponse(
        request,
        "try_it_result.html",
        {"lemma": lemma, "features": features, "result": result, "error": error},
    )
```

```html
{# src/lingua_rules/web/templates/try_it.html #}
{% extends "base.html" %}
{% block content %}
<h1>Try it: {{ lang }} / {{ category }}</h1>
<form hx-post="/{{ lang }}/category/{{ category }}/try" hx-target="#result">
  <label>Lemma <input type="text" name="lemma"></label>
  {% for dimension, values in vocab.dimensions.items() %}
  <label>{{ dimension }}
    <select name="{{ dimension }}">
      {% for value in values %}<option value="{{ value }}">{{ value }}</option>{% endfor %}
    </select>
  </label>
  {% endfor %}
  <button type="submit">Generate</button>
</form>
<div id="result"></div>
{% endblock %}
```

```html
{# src/lingua_rules/web/templates/try_it_result.html #}
{% if error %}
<p class="error">error: {{ error }}</p>
{% else %}
<p>{{ lemma }} + {{ features }} = <strong>{{ result }}</strong></p>
{% endif %}
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/web/test_try_it.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/web/ tests_unit/web/test_try_it.py
git commit -m "feat: add web UI try-it panel for generating forms"
```

---

### Task 11: Web UI — test runner view

**Files:**
- Modify: `src/lingua_rules/web/app.py`
- Create: `src/lingua_rules/web/templates/test_results.html`
- Test: `tests_unit/web/test_test_runner_view.py`

**Interfaces:**
- Consumes: `paradigm_tests.run_paradigm_tests` (Task 6); `get_rules_dir`, `get_tests_dir` (Task 9).
- Produces: `GET /{lang}/tests` route rendering pass/fail results.

- [ ] **Step 1: Write the failing test**

```python
# tests_unit/web/test_test_runner_view.py
from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_test_runner_view_shows_pass_summary_for_english():
    response = client.get("/en/tests")

    assert response.status_code == 200
    assert "3/3 passed" in response.text
```

- [ ] **Step 2: Run test to confirm it fails**

Run: `pytest tests_unit/web/test_test_runner_view.py -v`
Expected: FAIL (404 on `/en/tests`)

- [ ] **Step 3: Add the test runner route**

Add to `src/lingua_rules/web/app.py`:

```python
from lingua_rules.engine.paradigm_tests import run_paradigm_tests


@app.get("/{lang}/tests")
def test_runner_view(
    request: Request,
    lang: str,
    rules_dir: Path = Depends(get_rules_dir),
    tests_dir: Path = Depends(get_tests_dir),
):
    results = run_paradigm_tests(rules_dir, tests_dir, lang)
    passed = sum(1 for r in results if r.passed)
    return templates.TemplateResponse(
        request,
        "test_results.html",
        {"lang": lang, "results": results, "passed": passed, "total": len(results)},
    )
```

```html
{# src/lingua_rules/web/templates/test_results.html #}
{% extends "base.html" %}
{% block content %}
<h1>{{ lang }} paradigm tests</h1>
<p>{{ passed }}/{{ total }} passed</p>
<table>
  <tr><th>Lemma</th><th>Features</th><th>Expected</th><th>Actual</th><th>Status</th></tr>
  {% for r in results %}
  <tr>
    <td>{{ r.lemma }}</td>
    <td>{{ r.features }}</td>
    <td>{{ r.expected }}</td>
    <td>{{ r.actual if r.actual is not none else r.error }}</td>
    <td>{{ "PASS" if r.passed else "FAIL" }}</td>
  </tr>
  {% endfor %}
</table>
{% endblock %}
```

- [ ] **Step 4: Run test to confirm it passes**

Run: `pytest tests_unit/web/test_test_runner_view.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/web/ tests_unit/web/test_test_runner_view.py
git commit -m "feat: add web UI golden-file test runner view"
```

---

### Task 12: Web UI — regular-affix rule builder

**Files:**
- Modify: `src/lingua_rules/web/app.py`
- Create: `src/lingua_rules/web/templates/new_rule.html`
- Test: `tests_unit/web/test_rule_builder.py`

**Interfaces:**
- Consumes: `templates.append_rule` (Task 8, shared with the CLI's `new-rule` command); `get_rules_dir` (Task 9).
- Produces: `GET /{lang}/category/{category}/new-rule` (form), `POST /{lang}/category/{category}/new-rule` (appends via `append_rule`, redirects to the category page).

- [ ] **Step 1: Write the failing tests**

```python
# tests_unit/web/test_rule_builder.py
import shutil
from pathlib import Path

from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_new_rule_form_page_renders():
    response = client.get("/en/category/nouns/new-rule")

    assert response.status_code == 200
    assert "regular-affix" in response.text.lower() or "suffix" in response.text.lower()


def test_new_rule_post_appends_and_redirects(tmp_path, monkeypatch):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    monkeypatch.setenv("LINGUA_RULES_DIR", str(rules_dir))

    response = client.post(
        "/en/category/nouns/new-rule",
        data={"feature_key": "number=plural", "suffix": "es"},
        follow_redirects=False,
    )

    assert response.status_code in (302, 303, 307)
    assert '@suffix(Lemma, "es")' in (rules_dir / "en" / "nouns.lp").read_text(encoding="utf-8")
```

- [ ] **Step 2: Run tests to confirm they fail**

Run: `pytest tests_unit/web/test_rule_builder.py -v`
Expected: FAIL (404 on `/en/category/nouns/new-rule`)

- [ ] **Step 3: Add the rule builder routes**

Add to `src/lingua_rules/web/app.py`:

```python
from fastapi.responses import RedirectResponse

from lingua_rules.engine.templates import append_rule


@app.get("/{lang}/category/{category}/new-rule")
def new_rule_form(request: Request, lang: str, category: str):
    return templates.TemplateResponse(
        request, "new_rule.html", {"lang": lang, "category": category}
    )


@app.post("/{lang}/category/{category}/new-rule")
def new_rule_submit(
    lang: str,
    category: str,
    feature_key: str = Form(...),
    suffix: str = Form(...),
    rules_dir: Path = Depends(get_rules_dir),
):
    append_rule(rules_dir, lang, category, "regular-affix", feature_key=feature_key, suffix=suffix)
    return RedirectResponse(url=f"/{lang}/category/{category}", status_code=303)
```

```html
{# src/lingua_rules/web/templates/new_rule.html #}
{% extends "base.html" %}
{% block content %}
<h1>New rule (regular-affix): {{ lang }} / {{ category }}</h1>
<form method="post">
  <label>Feature key (e.g. number=plural) <input type="text" name="feature_key"></label>
  <label>Suffix to add <input type="text" name="suffix"></label>
  <button type="submit">Add rule</button>
</form>
{% endblock %}
```

- [ ] **Step 4: Run tests to confirm they pass**

Run: `pytest tests_unit/web/test_rule_builder.py -v`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add src/lingua_rules/web/ tests_unit/web/test_rule_builder.py
git commit -m "feat: add web UI regular-affix rule builder"
```

---

### Task 13: `serve` CLI command + README

**Files:**
- Modify: `src/lingua_rules/cli/main.py`
- Create: `README.md`
- Test: `tests_unit/cli/test_serve_command.py`

**Interfaces:**
- Consumes: `lingua_rules.web.app:app` (Task 9).
- Produces: `serve` command on the CLI `app` (Task 7/8) that launches the web UI via `uvicorn`.

- [ ] **Step 1: Write the failing test**

```python
# tests_unit/cli/test_serve_command.py
from typer.testing import CliRunner

from lingua_rules.cli.main import app

runner = CliRunner()


def test_serve_command_is_registered_and_help_works():
    result = runner.invoke(app, ["serve", "--help"])

    assert result.exit_code == 0
    assert "serve" in result.stdout.lower() or "uvicorn" in result.stdout.lower() or "--port" in result.stdout
```

(This checks the command exists and is wired correctly; it does not start a live server in the test, since that would block/require threading and isn't needed to verify the CLI wiring.)

- [ ] **Step 2: Run test to confirm it fails**

Run: `pytest tests_unit/cli/test_serve_command.py -v`
Expected: FAIL (`No such command 'serve'`)

- [ ] **Step 3: Add the serve command**

Add to `src/lingua_rules/cli/main.py`:

```python
@app.command()
def serve(
    host: str = typer.Option("127.0.0.1", "--host"),
    port: int = typer.Option(8000, "--port"),
) -> None:
    """Launch the local web UI."""
    import uvicorn

    uvicorn.run("lingua_rules.web.app:app", host=host, port=port)
```

- [ ] **Step 4: Run test to confirm it passes**

Run: `pytest tests_unit/cli/test_serve_command.py -v`
Expected: PASS

- [ ] **Step 5: Write the README**

```markdown
# lingua-rules

A system for linguists to author, browse, and test natural language grammar
rules. Rules are written as Clingo (Answer Set Programming) files, organized
per language and word category, and executed locally — no database, no
external service.

See `docs/superpowers/specs/2026-09-05-lingua-rules-design.md` for the full
design.

## Setup

    pip install -e ".[dev]"

## CLI

    lingua-rules generate en nouns cat --features number=plural
    lingua-rules test en
    lingua-rules lint en
    lingua-rules new-rule en nouns --template regular-affix --feature-key number=plural --suffix s
    lingua-rules serve

## Web UI

    lingua-rules serve

Then open http://127.0.0.1:8000 — browse languages and rule files, try
generating forms live, run the golden-file test suite, and add regular-affix
rules through a form.

## Rule files

Each language lives under `rules/<lang-code>/`:

- `lang.yaml` — name, ISO 639-3 code, declared word categories
- `features.yaml` — the feature dimensions/values that category rule files
  may use (e.g. `number: [singular, plural]`)
- `<category>.lp` — the Clingo rules for that category, general rules plus
  any lexeme-level exceptions

## Tests

Pytest unit tests: `pytest` (runs `tests_unit/`).
Golden-file grammar tests (linguist-authored fixtures under `tests/<lang>/`):
`lingua-rules test <lang>`.
```

- [ ] **Step 6: Commit**

```bash
git add src/lingua_rules/cli/main.py tests_unit/cli/test_serve_command.py README.md
git commit -m "feat: add serve command and project README"
```

---

## Final check

- [ ] Run the full test suite from the repo root and confirm everything passes together:

Run: `pytest -v`
Expected: all tests across `tests_unit/` PASS (engine, cli, web)

- [ ] Push the branch:

```bash
git push
```
