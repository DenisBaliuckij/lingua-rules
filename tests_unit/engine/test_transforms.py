from clingo.symbol import Number, String

from lingua_rules.engine.transforms import RuleContext


def test_suffix_appends_the_given_suffix():
    ctx = RuleContext()

    result = ctx.suffix(String("cat"), String("s"))

    assert result.string == "cats"


def test_strip_suffix_add_replaces_the_stripped_ending():
    ctx = RuleContext()

    result = ctx.strip_suffix_add(String("wolf"), Number(1), String("ves"))

    assert result.string == "wolves"


def test_strip_suffix_add_with_zero_strip_just_appends():
    ctx = RuleContext()

    result = ctx.strip_suffix_add(String("cat"), Number(0), String("s"))

    assert result.string == "cats"


def test_prefix_prepends_the_given_prefix():
    ctx = RuleContext()

    result = ctx.prefix(String("do"), String("un"))

    assert result.string == "undo"
