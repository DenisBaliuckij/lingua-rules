"""Whole-branch integration findings I4, I5, I7, I8 for the CLI."""

import shutil
from pathlib import Path

from typer.testing import CliRunner

from lingua_rules.cli.main import app

runner = CliRunner()


def _copy_rules(tmp_path):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    return rules_dir


# --- I4: a malformed .lp file is a clean error naming the file ---


def test_generate_reports_a_parse_error_with_the_file_path(tmp_path):
    rules_dir = _copy_rules(tmp_path)
    (rules_dir / "en" / "nouns.lp").write_text(
        'form(Lemma, "number=plural"\n', encoding="utf-8"
    )

    result = runner.invoke(
        app,
        ["generate", "en", "nouns", "cat", "--features", "number=plural",
         "--rules-dir", str(rules_dir)],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert "nouns.lp" in result.stdout
    assert "Traceback" not in result.stdout


# --- I5: a malformed language config is a clean error, not a traceback ---


def test_generate_on_a_malformed_language_exits_cleanly(tmp_path):
    rules_dir = tmp_path / "rules"
    (rules_dir / "xx").mkdir(parents=True)  # a directory with no lang.yaml

    result = runner.invoke(
        app,
        ["generate", "xx", "nouns", "cat", "--features", "number=plural",
         "--rules-dir", str(rules_dir)],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert "Traceback" not in result.stdout


def test_lint_on_a_malformed_language_exits_cleanly(tmp_path):
    rules_dir = tmp_path / "rules"
    (rules_dir / "xx").mkdir(parents=True)

    result = runner.invoke(app, ["lint", "xx", "--rules-dir", str(rules_dir)])

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert "Traceback" not in result.stdout


def test_new_rule_on_a_malformed_language_exits_cleanly(tmp_path):
    rules_dir = tmp_path / "rules"
    (rules_dir / "xx").mkdir(parents=True)

    result = runner.invoke(
        app,
        ["new-rule", "xx", "nouns", "--template", "regular-affix",
         "--feature-key", "number=plural", "--suffix", "s",
         "--rules-dir", str(rules_dir)],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert "Traceback" not in result.stdout


# --- I7: serve takes --rules-dir/--tests-dir and exports them ---


def test_serve_accepts_rules_and_tests_dir_options(tmp_path, monkeypatch):
    captured = {}

    class _FakeUvicorn:
        @staticmethod
        def run(target, host, port):
            captured["target"] = target
            captured["host"] = host
            captured["port"] = port
            captured["rules"] = __import__("os").environ["LINGUA_RULES_DIR"]
            captured["tests"] = __import__("os").environ["LINGUA_TESTS_DIR"]

    monkeypatch.setitem(__import__("sys").modules, "uvicorn", _FakeUvicorn)
    # setenv (not delenv) so monkeypatch records the pre-test state and undoes
    # serve's own os.environ writes on teardown -- otherwise this test leaks a
    # bogus rules dir into every later web test.
    monkeypatch.setenv("LINGUA_RULES_DIR", "<unset>")
    monkeypatch.setenv("LINGUA_TESTS_DIR", "<unset>")

    result = runner.invoke(
        app,
        ["serve", "--rules-dir", str(tmp_path / "r"), "--tests-dir", str(tmp_path / "t")],
    )

    assert result.exit_code == 0, result.stdout
    assert captured["rules"] == str(tmp_path / "r")
    assert captured["tests"] == str(tmp_path / "t")


def test_serve_help_documents_the_directory_options():
    result = runner.invoke(app, ["serve", "--help"])

    assert result.exit_code == 0
    assert "--rules-dir" in result.stdout
    assert "--tests-dir" in result.stdout


# --- I8: `test` matches the spec: lang optional, --category filter ---


def _two_language_tree(tmp_path):
    rules_dir = _copy_rules(tmp_path)
    tests_dir = tmp_path / "tests"
    shutil.copytree(Path("tests"), tests_dir)

    # a second language, with both a nouns and a verbs category
    lang_dir = rules_dir / "zz"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Zeta\ncategories: [nouns, verbs]\n", encoding="utf-8"
    )
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n", encoding="utf-8"
    )
    (lang_dir / "nouns.lp").write_text(
        'form(Lemma, "number=plural", @suffix(Lemma, "z")) :- input_lemma(Lemma).\n',
        encoding="utf-8",
    )
    (lang_dir / "verbs.lp").write_text(
        'form(Lemma, "number=plural", @suffix(Lemma, "v")) :- input_lemma(Lemma).\n',
        encoding="utf-8",
    )
    zz_tests = tests_dir / "zz"
    zz_tests.mkdir()
    (zz_tests / "nouns.paradigm.yaml").write_text(
        "lemma: qat\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n    expected: qatz\n"
        "---\n"
        "lemma: qat\ncategory: verbs\ncases:\n"
        "  - features: {number: plural}\n    expected: qatv\n",
        encoding="utf-8",
    )
    return rules_dir, tests_dir


def test_test_with_no_language_runs_every_language(tmp_path):
    rules_dir, tests_dir = _two_language_tree(tmp_path)

    result = runner.invoke(
        app, ["test", "--rules-dir", str(rules_dir), "--tests-dir", str(tests_dir)]
    )

    assert result.exit_code == 0, result.stdout
    assert "== en ==" in result.stdout
    assert "== zz ==" in result.stdout
    assert "cats" in result.stdout
    assert "qatz" in result.stdout


def test_test_with_no_language_exits_nonzero_if_any_language_fails(tmp_path):
    rules_dir, tests_dir = _two_language_tree(tmp_path)
    (tests_dir / "zz" / "nouns.paradigm.yaml").write_text(
        "lemma: qat\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n    expected: wrong\n",
        encoding="utf-8",
    )

    result = runner.invoke(
        app, ["test", "--rules-dir", str(rules_dir), "--tests-dir", str(tests_dir)]
    )

    assert result.exit_code == 1
    # the healthy language still got reported
    assert "== en ==" in result.stdout
    assert "3/3 passed" in result.stdout


def test_test_category_option_filters_cases(tmp_path):
    rules_dir, tests_dir = _two_language_tree(tmp_path)

    result = runner.invoke(
        app,
        ["test", "zz", "--category", "nouns",
         "--rules-dir", str(rules_dir), "--tests-dir", str(tests_dir)],
    )

    assert result.exit_code == 0, result.stdout
    assert "qatz" in result.stdout
    assert "qatv" not in result.stdout
    assert "1/1 passed" in result.stdout


def test_test_reports_no_test_directories_without_crashing(tmp_path):
    result = runner.invoke(
        app,
        ["test", "--rules-dir", str(tmp_path / "r"), "--tests-dir", str(tmp_path / "t")],
    )

    assert result.exit_code == 0
    assert "no language test directories" in result.stdout


def test_test_help_documents_the_category_option():
    result = runner.invoke(app, ["test", "--help"])

    assert result.exit_code == 0
    assert "--category" in result.stdout
