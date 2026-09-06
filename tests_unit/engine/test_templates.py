from pathlib import Path

import pytest

from lingua_rules.engine.escaping import UnsafeFieldValueError
from lingua_rules.engine.features import UnknownFeatureError
from lingua_rules.engine.templates import MissingTemplateFieldError, append_rule


def _write_minimal_category(tmp_path: Path) -> Path:
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    # append_rule validates feature_key against the declared vocabulary, so a
    # language fixture needs features.yaml the same way a real one does.
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n", encoding="utf-8"
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


# --- ASP injection / validation (final-review finding C3) ---


@pytest.mark.parametrize(
    "kwargs",
    [
        {"feature_key": "number=plural", "suffix": 's")) :- input_lemma(X).\n%'},
        {"feature_key": 'number=plural"), "x", ("y', "suffix": "s"},
    ],
)
def test_append_rule_rejects_injection_payloads_without_writing(tmp_path, kwargs):
    """A value that breaks out of its Clingo string literal must never reach disk.

    Before this fix a crafted suffix silently rewrote an unrelated existing
    rule and injected new facts into an executed .lp file.
    """
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises((UnsafeFieldValueError, UnknownFeatureError)):
        append_rule(rules_dir, "xx", "nouns", "regular-affix", **kwargs)

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"


@pytest.mark.parametrize("field", ["lemma", "form"])
def test_append_rule_rejects_a_newline_in_an_exception_override_field(tmp_path, field):
    rules_dir = _write_minimal_category(tmp_path)
    kwargs = {"lemma": "child", "feature_key": "number=plural", "form": "children"}
    kwargs[field] = "bad\nvalue"

    with pytest.raises(UnsafeFieldValueError):
        append_rule(rules_dir, "xx", "nouns", "exception-override", **kwargs)

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"


def test_append_rule_escapes_a_quote_in_a_lemma_rather_than_breaking_out(tmp_path):
    """A quote is legitimate in some orthographies -- escape it, don't reject it."""
    rules_dir = _write_minimal_category(tmp_path)

    path = append_rule(
        rules_dir, "xx", "nouns", "exception-override",
        lemma='o"clock', feature_key="number=plural", form="forms",
    )

    content = path.read_text(encoding="utf-8")
    assert r'irregular("o\"clock")' in content


def test_append_rule_rejects_an_undeclared_feature_key(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(UnknownFeatureError):
        append_rule(
            rules_dir, "xx", "nouns", "regular-affix",
            feature_key="numbre=plural", suffix="s",
        )

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"


def test_append_rule_rejects_an_undeclared_feature_value(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(UnknownFeatureError):
        append_rule(
            rules_dir, "xx", "nouns", "regular-affix",
            feature_key="number=dual", suffix="s",
        )

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"


def test_append_rule_rejects_a_malformed_feature_key(tmp_path):
    rules_dir = _write_minimal_category(tmp_path)

    with pytest.raises(UnsafeFieldValueError):
        append_rule(
            rules_dir, "xx", "nouns", "regular-affix",
            feature_key="just-a-word", suffix="s",
        )

    content = (rules_dir / "xx" / "nouns.lp").read_text(encoding="utf-8")
    assert content == "% existing rules\n"
