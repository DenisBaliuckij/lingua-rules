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
% Data (rules/en/data/): adjectives.lexicon.tsv (adj_class and
% double_consonant per lemma), adjectives.exceptions.tsv (irregular comparison).

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
