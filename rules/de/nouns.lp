% rules/de/nouns.lp
% German noun declension: 4 cases x 2 numbers (features: case, number).
%
% Each lemma is assigned a declension class with noun_class/2; a lemma without
% a class produces no forms. Classes (genitive singular / plural / dative plural):
%   strong_e       Hund   -> Hundes / Hunde / Hunden
%   strong_er      Kind   -> Kindes / Kinder / Kindern
%   strong_zero    Lehrer -> Lehrers / Lehrer / Lehrern
%   strong_zero_n  Mädchen-> Mädchens / Mädchen / Mädchen   (plural already ends in -n)
%   s_plural       Auto   -> Autos / Autos / Autos
%   fem_en         Frau   -> Frau / Frauen / Frauen
%   fem_n          Blume  -> Blume / Blumen / Blumen
%   fem_nen        Lehrerin -> Lehrerin / Lehrerinnen / Lehrerinnen
%   weak_en        Student -> Studenten in every form except the nominative singular
%   weak_n         Junge  -> Jungen in every form except the nominative singular
% Nouns with an umlaut or other stem change in the plural (Mann -> Männer) are
% listed as irregular with all eight forms.
% Data (rules/de/data/): nouns.lexicon.tsv (noun_class per lemma),
% nouns.exceptions.tsv (irregular nouns).
%
% Not covered: the optional dative singular -e (dem Tage), genitive variants
% (-s vs -es), and mixed-declension nouns such as Name/Namens.

% --- strong_e
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=genitive;number=singular", @suffix(L, "es")) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=nominative;number=plural", @suffix(L, "e")) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=accusative;number=plural", @suffix(L, "e")) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=dative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, strong_e).
form(L, "case=genitive;number=plural", @suffix(L, "e")) :- input_lemma(L), noun_class(L, strong_e).

% --- strong_er
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=genitive;number=singular", @suffix(L, "es")) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=nominative;number=plural", @suffix(L, "er")) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=accusative;number=plural", @suffix(L, "er")) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=dative;number=plural", @suffix(L, "ern")) :- input_lemma(L), noun_class(L, strong_er).
form(L, "case=genitive;number=plural", @suffix(L, "er")) :- input_lemma(L), noun_class(L, strong_er).

% --- strong_zero
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=genitive;number=singular", @suffix(L, "s")) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=nominative;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=accusative;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=dative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, strong_zero).
form(L, "case=genitive;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero).

% --- strong_zero_n
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=genitive;number=singular", @suffix(L, "s")) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=nominative;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=accusative;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=dative;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero_n).
form(L, "case=genitive;number=plural", L) :- input_lemma(L), noun_class(L, strong_zero_n).

% --- s_plural
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=genitive;number=singular", @suffix(L, "s")) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=nominative;number=plural", @suffix(L, "s")) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=accusative;number=plural", @suffix(L, "s")) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=dative;number=plural", @suffix(L, "s")) :- input_lemma(L), noun_class(L, s_plural).
form(L, "case=genitive;number=plural", @suffix(L, "s")) :- input_lemma(L), noun_class(L, s_plural).

% --- fem_en
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=genitive;number=singular", L) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=nominative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=accusative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=dative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, fem_en).
form(L, "case=genitive;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, fem_en).

% --- fem_n
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=genitive;number=singular", L) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=nominative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=accusative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=dative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, fem_n).
form(L, "case=genitive;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, fem_n).

% --- fem_nen
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=dative;number=singular", L) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=genitive;number=singular", L) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=nominative;number=plural", @suffix(L, "nen")) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=accusative;number=plural", @suffix(L, "nen")) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=dative;number=plural", @suffix(L, "nen")) :- input_lemma(L), noun_class(L, fem_nen).
form(L, "case=genitive;number=plural", @suffix(L, "nen")) :- input_lemma(L), noun_class(L, fem_nen).

% --- weak_en
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=accusative;number=singular", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=dative;number=singular", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=genitive;number=singular", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=nominative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=accusative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=dative;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).
form(L, "case=genitive;number=plural", @suffix(L, "en")) :- input_lemma(L), noun_class(L, weak_en).

% --- weak_n
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=accusative;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=dative;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=nominative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=accusative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=dative;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
form(L, "case=genitive;number=plural", @suffix(L, "n")) :- input_lemma(L), noun_class(L, weak_n).
