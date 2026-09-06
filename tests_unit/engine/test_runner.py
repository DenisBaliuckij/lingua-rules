from pathlib import Path

import pytest

from lingua_rules.engine.runner import NoRuleMatchedError, generate_form

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
