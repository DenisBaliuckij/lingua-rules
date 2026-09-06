from typer.testing import CliRunner

from lingua_rules.cli.main import app

runner = CliRunner()


def test_serve_command_is_registered_and_help_works():
    result = runner.invoke(app, ["serve", "--help"])

    assert result.exit_code == 0
    assert "serve" in result.stdout.lower() or "uvicorn" in result.stdout.lower() or "--port" in result.stdout
