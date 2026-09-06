from pathlib import Path

import pytest

from lingua_rules.engine.runner import InvalidLemmaError, NoRuleMatchedError, generate_form

RULES_DIR = Path("rules")


def test_generate_form_applies_the_regular_plural_rule():
    assert generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "plural"}) == "cats"


def test_generate_form_singular_is_the_lemma_itself():
    assert generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "singular"}) == "cat"


def test_generate_form_uses_the_exception_instead_of_the_regular_rule():
    assert generate_form(RULES_DIR, "en", "nouns", "child", {"number": "plural"}) == "children"


def test_generate_form_raises_when_no_rule_produces_a_form():
    with pytest.raises(NoRuleMatchedError):
        generate_form(RULES_DIR, "en", "nouns", "cat", {"number": "dual"})


@pytest.fixture
def identity_rules_dir(tmp_path):
    """A minimal synthetic language with a single identity rule.

    The rule echoes the input lemma straight back out for number=singular,
    which is enough to exercise the escaping/injection defense without
    depending on the real rules/en/nouns.lp fixture.
    """
    lang_dir = tmp_path / "zz"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Synthetic\ncategories:\n  - nouns\n",
        encoding="utf-8",
    )
    (lang_dir / "nouns.lp").write_text(
        'form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).\n',
        encoding="utf-8",
    )
    return tmp_path


def test_generate_form_round_trips_a_lemma_containing_a_quote(identity_rules_dir):
    assert generate_form(identity_rules_dir, "zz", "nouns", 'a"b', {"number": "singular"}) == 'a"b'


def test_generate_form_does_not_execute_an_injection_attempt_as_asp(identity_rules_dir):
    lemma = 'x"). injected(1). input_lemma("y'
    assert generate_form(identity_rules_dir, "zz", "nouns", lemma, {"number": "singular"}) == lemma


def test_generate_form_rejects_a_lemma_containing_a_newline(identity_rules_dir):
    with pytest.raises(InvalidLemmaError):
        generate_form(identity_rules_dir, "zz", "nouns", "x\ninput_lemma(\"y", {"number": "singular"})
