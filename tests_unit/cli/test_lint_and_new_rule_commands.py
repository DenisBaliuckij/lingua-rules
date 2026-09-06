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
