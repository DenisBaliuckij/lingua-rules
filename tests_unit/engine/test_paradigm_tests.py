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
