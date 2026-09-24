% rules/en/adjectives.lp
% English adjective comparison (feature: degree).
%
% Regular adjectives need no entry: tall -> taller, tallest.
% Adjectives whose spelling changes, or that compare with "more"/"most", are
% given a class with adj_class/2:
%   e_final       large     -> larger, largest
%   y_final       happy     -> happier, happiest
%   periphrastic  beautiful -> more beautiful, most beautiful
% Adjectives that double their final consonant: big -> bigger, biggest
% (double_consonant/2). Irregular comparison is listed explicitly.

form(L, "degree=positive", L) :- input_lemma(L).

has_class(L) :- adj_class(L, _).
has_class(L) :- double_consonant(L, _).
regular(L) :- input_lemma(L), not irregular(L), not has_class(L).

form(L, "degree=comparative", @suffix(L, "er")) :- regular(L).
form(L, "degree=superlative", @suffix(L, "est")) :- regular(L).

form(L, "degree=comparative", @suffix(L, "r")) :- input_lemma(L), adj_class(L, e_final).
form(L, "degree=superlative", @suffix(L, "st")) :- input_lemma(L), adj_class(L, e_final).

form(L, "degree=comparative", @strip_suffix_add(L, 1, "ier")) :- input_lemma(L), adj_class(L, y_final).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "iest")) :- input_lemma(L), adj_class(L, y_final).

form(L, "degree=comparative", @prefix(L, "more ")) :- input_lemma(L), adj_class(L, periphrastic).
form(L, "degree=superlative", @prefix(L, "most ")) :- input_lemma(L), adj_class(L, periphrastic).

form(L, "degree=comparative", @suffix(S, "er")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "degree=superlative", @suffix(S, "est")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).

adj_class("large", e_final). adj_class("nice", e_final). adj_class("late", e_final). adj_class("wide", e_final). adj_class("safe", e_final). adj_class("simple", e_final). adj_class("close", e_final). adj_class("strange", e_final).
adj_class("happy", y_final). adj_class("easy", y_final). adj_class("busy", y_final). adj_class("early", y_final). adj_class("heavy", y_final). adj_class("pretty", y_final). adj_class("funny", y_final). adj_class("angry", y_final).
adj_class("beautiful", periphrastic). adj_class("important", periphrastic). adj_class("interesting", periphrastic). adj_class("expensive", periphrastic). adj_class("difficult", periphrastic). adj_class("careful", periphrastic). adj_class("modern", periphrastic). adj_class("famous", periphrastic).
double_consonant("big", "g"). double_consonant("hot", "t"). double_consonant("thin", "n"). double_consonant("sad", "d"). double_consonant("fat", "t"). double_consonant("wet", "t"). double_consonant("red", "d").

irregular("good"). form("good", "degree=comparative", "better"). form("good", "degree=superlative", "best").
irregular("bad"). form("bad", "degree=comparative", "worse"). form("bad", "degree=superlative", "worst").
irregular("far"). form("far", "degree=comparative", "farther"). form("far", "degree=superlative", "farthest").
irregular("little"). form("little", "degree=comparative", "less"). form("little", "degree=superlative", "least").
irregular("many"). form("many", "degree=comparative", "more"). form("many", "degree=superlative", "most").
irregular("much"). form("much", "degree=comparative", "more"). form("much", "degree=superlative", "most").
