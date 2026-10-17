% rules/fi/adjectives.lp
% Finnish adjective comparison (feature: degree). Classes (adj_class/2):
%   o_u   iso     -> isompi, isoin        (lemma + -mpi / -in)
%   a_ae  vanha   -> vanhempi, vanhin     (final a/ä -> -empi / -in)
%   nen   sininen -> sinisempi, sinisin
%   long  vapaa   -> vapaampi, vapain
% Irregular comparison is listed (hyvä -> parempi, paras).
%
% Adjectives with consonant gradation (helppo -> helpompi) are listed too.
% Data (rules/fi/data/): adjectives.lexicon.tsv (adj_class per lemma),
% adjectives.exceptions.tsv (irregular comparison).
%
% Not covered: case inflection of adjectives (they inflect like nouns; see
% nouns.lp).

form(L, "degree=positive", L) :- input_lemma(L).

form(L, "degree=comparative", @suffix(L, "mpi")) :- input_lemma(L), adj_class(L, o_u).
form(L, "degree=superlative", @suffix(L, "in")) :- input_lemma(L), adj_class(L, o_u).
form(L, "degree=comparative", @strip_suffix_add(L, 1, "empi")) :- input_lemma(L), adj_class(L, a_ae).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), adj_class(L, a_ae).
form(L, "degree=comparative", @strip_suffix_add(L, 3, "sempi")) :- input_lemma(L), adj_class(L, nen).
form(L, "degree=superlative", @strip_suffix_add(L, 3, "sin")) :- input_lemma(L), adj_class(L, nen).
form(L, "degree=comparative", @suffix(L, "mpi")) :- input_lemma(L), adj_class(L, long).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), adj_class(L, long).
