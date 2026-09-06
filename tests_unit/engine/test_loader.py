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
