from __future__ import annotations

from clingo.symbol import String, Symbol


class RuleContext:
    """Exposes string-transform helpers to Clingo rule files via @-calls.

    Clingo has no native string-concatenation operator, so rule files call
    these Python functions (e.g. `@suffix(Lemma, "s")`) instead of trying to
    splice strings in ASP itself.
    """

    def suffix(self, lemma: Symbol, suffix: Symbol) -> Symbol:
        return String(lemma.string + suffix.string)

    def strip_suffix_add(self, lemma: Symbol, strip_len: Symbol, add: Symbol) -> Symbol:
        n = strip_len.number
        base = lemma.string[: len(lemma.string) - n] if n > 0 else lemma.string
        return String(base + add.string)

    def prefix(self, lemma: Symbol, prefix_str: Symbol) -> Symbol:
        return String(prefix_str.string + lemma.string)
