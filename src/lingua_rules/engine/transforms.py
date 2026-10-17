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

    def affix(
        self, lemma: Symbol, strip_front: Symbol, prefix_str: Symbol, strip: Symbol, ending: Symbol
    ) -> Symbol:
        """Drop strip_front letters at the start and strip letters at the end, then add the
        prefix and the ending (Swahili m-tu -> wa-tu: @affix(L, 1, "wa", 0, ""))."""
        word = lemma.string
        front, back = strip_front.number, strip.number
        core = word[front: len(word) - back] if back > 0 else word[front:]
        return String(prefix_str.string + core + ending.string)
