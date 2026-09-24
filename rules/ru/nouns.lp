% rules/ru/nouns.lp
% Russian noun declension: 6 cases x 2 numbers.
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned a
% declension class with a noun_class/2 fact, and each class has one rule per
% case/number form. A lemma without a class produces no forms.
%
% Classes (inanimate nouns; the accusative equals the nominative):
%   m_hard  masculine, hard consonant stem      стол, журнал, завод
%   f_a     feminine in -а, non-velar hard stem лампа, школа, комната
%   n_o     neuter in -о                        слово, место, дело
%
% Feature keys are written with the dimensions in alphabetical order:
% "case=...;number=...".

noun_class("стол", m_hard).
noun_class("журнал", m_hard).
noun_class("завод", m_hard).
noun_class("лампа", f_a).
noun_class("школа", f_a).
noun_class("комната", f_a).
noun_class("слово", n_o).
noun_class("место", n_o).
noun_class("дело", n_o).

% --- m_hard: стол ---------------------------------------------------------
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=genitive;number=singular", @suffix(L, "а")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=dative;number=singular", @suffix(L, "у")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=instrumental;number=singular", @suffix(L, "ом")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=prepositional;number=singular", @suffix(L, "е")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=nominative;number=plural", @suffix(L, "ы")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=genitive;number=plural", @suffix(L, "ов")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=dative;number=plural", @suffix(L, "ам")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=accusative;number=plural", @suffix(L, "ы")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=instrumental;number=plural", @suffix(L, "ами")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=prepositional;number=plural", @suffix(L, "ах")) :- input_lemma(L), noun_class(L, m_hard).

% --- f_a: лампа (stem = lemma without the final -а) -------------------------
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "ы")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ой")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "ы")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=accusative;number=plural", @strip_suffix_add(L, 1, "ы")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, f_a).

% --- n_o: слово (stem = lemma without the final -о) -------------------------
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=accusative;number=singular", L) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ом")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=accusative;number=plural", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, n_o).

% --- Exceptions -------------------------------------------------------------
% "ребёнок" (animate, suppletive plural "дети"): every form is listed. It has
% no noun_class fact, so no class rule applies to it.
irregular("ребёнок").
form("ребёнок", "case=nominative;number=singular", "ребёнок").
form("ребёнок", "case=genitive;number=singular", "ребёнка").
form("ребёнок", "case=dative;number=singular", "ребёнку").
form("ребёнок", "case=accusative;number=singular", "ребёнка").
form("ребёнок", "case=instrumental;number=singular", "ребёнком").
form("ребёнок", "case=prepositional;number=singular", "ребёнке").
form("ребёнок", "case=nominative;number=plural", "дети").
form("ребёнок", "case=genitive;number=plural", "детей").
form("ребёнок", "case=dative;number=plural", "детям").
form("ребёнок", "case=accusative;number=plural", "детей").
form("ребёнок", "case=instrumental;number=plural", "детьми").
form("ребёнок", "case=prepositional;number=plural", "детях").
