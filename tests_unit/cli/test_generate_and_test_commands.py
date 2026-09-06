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
