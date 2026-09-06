from pathlib import Path

import pytest

from lingua_rules.engine.templates import MissingTemplateFieldError, append_rule


def _write_minimal_category(tmp_path: Path) -> Path:
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (lang_dir / "nouns.lp").write_text("% existing rules\n", encoding="utf-8")
    return tmp_path


def test_append_rule_writes_a_regular_affix_block(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    path = append_rule(
        rules_dir, "xx", "nouns", "regular-affix",
        feature_key="number=plural", suffix="s",
    )

    content = path.read_text(encoding="utf-8")
    assert "% existing rules" in content
    assert '@suffix(Lemma, "s")' in content
    assert '"number=plural"' in content


def test_append_rule_writes_an_exception_override_block(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    path = append_rule(
        rules_dir, "xx", "nouns", "exception-override",
        lemma="child", feature_key="number=plural", form="children",
    )

    content = path.read_text(encoding="utf-8")
    assert 'irregular("child")' in content
    assert 'form("child", "number=plural", "children")' in content


def test_append_rule_rejects_an_unknown_template(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(ValueError):
        append_rule(rules_dir, "xx", "nouns", "not-a-real-template")


def test_append_rule_rejects_a_missing_required_field(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(MissingTemplateFieldError):
        append_rule(
            rules_dir, "xx", "nouns", "regular-affix",
            feature_key="number=plural",
        )

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"


def test_append_rule_treats_an_empty_string_field_as_missing(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(MissingTemplateFieldError):
        append_rule(
            rules_dir, "xx", "nouns", "regular-affix",
            feature_key="number=plural", suffix="",
        )

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"
