from __future__ import annotations

from pathlib import Path

import typer

from lingua_rules.engine.features import (
    UnknownFeatureError,
    load_feature_vocabulary,
    validate_features,
)
from lingua_rules.engine.lint import lint_language
from lingua_rules.engine.loader import CategoryNotFoundError, LanguageNotFoundError
from lingua_rules.engine.paradigm_tests import run_paradigm_tests
from lingua_rules.engine.runner import InvalidLemmaError, NoRuleMatchedError, generate_form
from lingua_rules.engine.templates import MissingTemplateFieldError, append_rule

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
    except (UnknownFeatureError, NoRuleMatchedError, InvalidLemmaError) as exc:
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


@app.command()
def lint(
    lang: str,
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
) -> None:
    """Validate LANG's rule files: Clingo parse errors and undeclared feature usage."""
    try:
        issues = lint_language(rules_dir, lang)
    except LanguageNotFoundError as exc:
        typer.echo(f"error: {exc}")
        raise typer.Exit(code=1)
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
    suffix: str = typer.Option(None, "--suffix"),
    lemma: str = typer.Option(None, "--lemma"),
    form: str = typer.Option(None, "--form"),
    rules_dir: Path = typer.Option(Path("rules"), "--rules-dir"),
) -> None:
    """Append a rule scaffold from TEMPLATE to CATEGORY's rule file for LANG."""
    fields = {"feature_key": feature_key, "suffix": suffix, "lemma": lemma, "form": form}
    kwargs = {key: value for key, value in fields.items() if value is not None}
    try:
        path = append_rule(rules_dir, lang, category, template, **kwargs)
    except (
        ValueError,
        MissingTemplateFieldError,
        LanguageNotFoundError,
        CategoryNotFoundError,
    ) as exc:
        typer.echo(f"error: {exc}")
        raise typer.Exit(code=1)
    typer.echo(f"appended {template} scaffold to {path}")


@app.command()
def serve(
    host: str = typer.Option("127.0.0.1", "--host"),
    port: int = typer.Option(8000, "--port"),
) -> None:
    """Launch the local web UI."""
    import uvicorn

    uvicorn.run("lingua_rules.web.app:app", host=host, port=port)


if __name__ == "__main__":
    app()
