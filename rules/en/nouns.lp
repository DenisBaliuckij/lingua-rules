% rules/en/nouns.lp
% English noun pluralization. Regular nouns take an "s" suffix; any lemma
% flagged irregular/1 is excluded from the regular rule via default negation
% and gets its plural form from an explicit exception instead.
%
% Data (rules/en/data/):
%   nouns.exceptions.tsv  irregular plurals (child -> children, sheep -> sheep)
%   nouns.lexicon.tsv     noun_class/2 for nouns whose plural spelling changes

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma), not irregular(Lemma), not has_class(Lemma).

has_class(L) :- noun_class(L, _).

% Spelling-driven plurals:
% consonant + "y" -> "ies" (city -> cities)
form(L, "number=plural", @strip_suffix_add(L, 1, "ies")) :- input_lemma(L), noun_class(L, y_ies), not irregular(L).
% sibilant endings (-s, -x, -ch, -sh) -> "es" (box -> boxes)
form(L, "number=plural", @suffix(L, "es")) :- input_lemma(L), noun_class(L, sibilant), not irregular(L).
% "-f" -> "ves" (leaf -> leaves)
form(L, "number=plural", @strip_suffix_add(L, 1, "ves")) :- input_lemma(L), noun_class(L, f_ves), not irregular(L).
% "-fe" -> "ves" (knife -> knives)
form(L, "number=plural", @strip_suffix_add(L, 2, "ves")) :- input_lemma(L), noun_class(L, fe_ves), not irregular(L).
