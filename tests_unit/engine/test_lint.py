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
