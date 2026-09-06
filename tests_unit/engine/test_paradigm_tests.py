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
    # run_paradigm_tests now validates each case against the declared
    # vocabulary before generating, so a language fixture needs features.yaml.
    (rules_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n", encoding="utf-8"
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


def _write_language(tmp_path, *, categories="[nouns]", features=True, rules=True):
    """A minimal synthetic language, with pieces optionally left out."""
    lang_dir = tmp_path / "rules" / "xx"
    lang_dir.mkdir(parents=True)
    (lang_dir / "lang.yaml").write_text(
        f"name: Test\ncategories: {categories}\n", encoding="utf-8"
    )
    if features:
        (lang_dir / "features.yaml").write_text(
            "dimensions:\n  number:\n    values: [singular, plural]\n",
            encoding="utf-8",
        )
    if rules:
        (lang_dir / "nouns.lp").write_text(
            'form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma).\n',
            encoding="utf-8",
        )
    return tmp_path / "rules"


def _write_fixture(tmp_path, body):
    tests_dir = tmp_path / "tests" / "xx"
    tests_dir.mkdir(parents=True)
    (tests_dir / "nouns.paradigm.yaml").write_text(body, encoding="utf-8")
    return tmp_path / "tests"


# --- I1: fixtures are validated against the feature vocabulary ---


def test_a_typod_feature_dimension_is_reported_as_such(tmp_path):
    """Before this fix a typo'd dimension surfaced as a generic
    'no rule matched', which gives the linguist nothing to go on."""
    rules_dir = _write_language(tmp_path)
    tests_dir = _write_fixture(
        tmp_path,
        "lemma: cat\ncategory: nouns\ncases:\n"
        "  - features: {numbre: plural}\n"
        "    expected: cats\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert len(results) == 1
    assert results[0].passed is False
    assert "unknown feature dimension" in results[0].error


def test_a_typod_feature_value_is_reported_as_such(tmp_path):
    rules_dir = _write_language(tmp_path)
    tests_dir = _write_fixture(
        tmp_path,
        "lemma: cat\ncategory: nouns\ncases:\n"
        "  - features: {number: plurul}\n"
        "    expected: cats\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert results[0].passed is False
    assert "unknown value" in results[0].error


# --- I2: one bad case never takes down the whole run ---


def test_an_undeclared_category_fails_only_its_own_case(tmp_path):
    rules_dir = _write_language(tmp_path)
    tests_dir = _write_fixture(
        tmp_path,
        "lemma: cat\ncategory: verbs\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: cats\n"
        "---\n"
        "lemma: dog\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: dogs\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert len(results) == 2
    assert results[0].passed is False
    assert "verbs" in results[0].error
    # the good fixture in the same file still ran and still reported
    assert results[1].passed is True
    assert results[1].actual == "dogs"


def test_a_fixture_missing_a_required_key_is_reported_not_raised(tmp_path):
    rules_dir = _write_language(tmp_path)
    tests_dir = _write_fixture(
        tmp_path,
        "category: nouns\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: cats\n"
        "---\n"
        "lemma: dog\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: dogs\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert len(results) == 2
    assert results[0].passed is False
    assert "lemma" in results[0].error
    assert results[1].passed is True


def test_a_case_missing_expected_is_reported_not_raised(tmp_path):
    rules_dir = _write_language(tmp_path)
    tests_dir = _write_fixture(
        tmp_path,
        "lemma: cat\ncategory: nouns\ncases:\n  - features: {number: plural}\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert len(results) == 1
    assert results[0].passed is False
    assert results[0].error


def test_a_missing_feature_vocabulary_is_reported_not_raised(tmp_path):
    rules_dir = _write_language(tmp_path, features=False)
    tests_dir = _write_fixture(
        tmp_path,
        "lemma: cat\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n"
        "    expected: cats\n",
    )

    results = run_paradigm_tests(rules_dir, tests_dir, "xx")

    assert len(results) == 1
    assert results[0].passed is False
    assert "feature vocabulary" in results[0].error
