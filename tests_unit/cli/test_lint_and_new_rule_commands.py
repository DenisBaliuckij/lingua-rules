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


def test_lint_on_an_unknown_language_exits_cleanly():
    result = runner.invoke(app, ["lint", "zz", "--rules-dir", "rules"])

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert isinstance(result.exception, SystemExit)
    assert "Traceback" not in result.stdout


def test_new_rule_with_a_missing_required_field_exits_cleanly_and_writes_nothing(tmp_path):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    nouns_path = rules_dir / "en" / "nouns.lp"
    before = nouns_path.read_text(encoding="utf-8")

    result = runner.invoke(
        app,
        [
            "new-rule", "en", "nouns",
            "--template", "regular-affix",
            "--feature-key", "number=plural",
            "--rules-dir", str(rules_dir),
        ],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert isinstance(result.exception, SystemExit)
    assert "Traceback" not in result.stdout
    assert nouns_path.read_text(encoding="utf-8") == before


def test_new_rule_on_an_unknown_language_exits_cleanly():
    result = runner.invoke(
        app,
        [
            "new-rule", "zz", "nouns",
            "--template", "regular-affix",
            "--feature-key", "number=plural",
            "--suffix", "s",
            "--rules-dir", "rules",
        ],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert isinstance(result.exception, SystemExit)
    assert "Traceback" not in result.stdout


def test_new_rule_on_an_unknown_category_exits_cleanly():
    result = runner.invoke(
        app,
        [
            "new-rule", "en", "not-a-real-category",
            "--template", "regular-affix",
            "--feature-key", "number=plural",
            "--suffix", "s",
            "--rules-dir", "rules",
        ],
    )

    assert result.exit_code == 1
    assert "error:" in result.stdout
    assert isinstance(result.exception, SystemExit)
    assert "Traceback" not in result.stdout
