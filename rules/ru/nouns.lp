% rules/ru/nouns.lp
% Russian noun declension: 6 cases x 2 numbers (features: case, number).
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned a
% declension class with noun_class/2 (a lemma without a class produces no
% forms), and animate nouns are marked with animate/1.
%
% Data (rules/ru/data/): nouns.lexicon.tsv gives noun_class and animate per
% lemma; nouns.classes.tsv gives each class's gender (class_gender/2) and
% whether its accusative is the nominative (acc_from_nominative/1);
% nouns.exceptions.tsv lists irregular nouns.
%
% Classes (nominative singular -> genitive singular, nominative plural):
%   m_hard           стол -> стола, столы          m_velar   урок -> урока, уроки
%   m_hush           нож -> ножа, ножи (gen pl -ей) m_j       музей -> музея, музеи
%   m_soft           портфель -> портфеля (instr. -ем, unstressed)
%   m_soft_stressed  словарь -> словаря (instr. -ём, stressed)
%   f_a              лампа -> лампы, лампы         f_a_velar книга -> книги, книги
%   f_a_hush         задача -> задачи (instr. -ей)  f_ya      неделя -> недели, недель
%   f_ija            станция -> станции, станций
%   f_soft           дверь -> двери, дверям        f_soft_hush ночь -> ночи, ночам
%   n_o              слово -> слова, слов          n_e       море -> моря, морей
%   n_ie             здание -> здания, зданий (prep. sg. -ии)
%
% Accusative: feminine -а/-я nouns have their own ending (лампу, неделю);
% otherwise the accusative equals the nominative, or the genitive for animate
% masculine nouns in the singular and for all animate nouns in the plural
% (студента, студентов; мам, собак).
% Nouns with stem changes (ребёнок/дети, мать/матери, день/дня) are irregular
% and list all 12 forms in nouns.exceptions.tsv.
%
% Not covered: fleeting vowels in regular classes (only in listed nouns),
% stress-dependent endings other than -ем/-ём, second genitive/locative
% (чашка чаю, в лесу), and nouns in -ц (улица -> улицей).

% --- m_hard
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=genitive;number=singular", @suffix(L, "а")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=dative;number=singular", @suffix(L, "у")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=instrumental;number=singular", @suffix(L, "ом")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=prepositional;number=singular", @suffix(L, "е")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=nominative;number=plural", @suffix(L, "ы")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=genitive;number=plural", @suffix(L, "ов")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=dative;number=plural", @suffix(L, "ам")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=instrumental;number=plural", @suffix(L, "ами")) :- input_lemma(L), noun_class(L, m_hard).
form(L, "case=prepositional;number=plural", @suffix(L, "ах")) :- input_lemma(L), noun_class(L, m_hard).

% --- m_velar
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=genitive;number=singular", @suffix(L, "а")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=dative;number=singular", @suffix(L, "у")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=instrumental;number=singular", @suffix(L, "ом")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=prepositional;number=singular", @suffix(L, "е")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=nominative;number=plural", @suffix(L, "и")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=genitive;number=plural", @suffix(L, "ов")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=dative;number=plural", @suffix(L, "ам")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=instrumental;number=plural", @suffix(L, "ами")) :- input_lemma(L), noun_class(L, m_velar).
form(L, "case=prepositional;number=plural", @suffix(L, "ах")) :- input_lemma(L), noun_class(L, m_velar).

% --- m_hush
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=genitive;number=singular", @suffix(L, "а")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=dative;number=singular", @suffix(L, "у")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=instrumental;number=singular", @suffix(L, "ом")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=prepositional;number=singular", @suffix(L, "е")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=nominative;number=plural", @suffix(L, "и")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=genitive;number=plural", @suffix(L, "ей")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=dative;number=plural", @suffix(L, "ам")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=instrumental;number=plural", @suffix(L, "ами")) :- input_lemma(L), noun_class(L, m_hush).
form(L, "case=prepositional;number=plural", @suffix(L, "ах")) :- input_lemma(L), noun_class(L, m_hush).

% --- m_soft
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "ь")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ем")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, m_soft).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, m_soft).

% --- m_soft_stressed
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "ь")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ём")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, m_soft_stressed).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, m_soft_stressed).

% --- m_j
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "й")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ем")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ев")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, m_j).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, m_j).

% --- f_a
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "ы")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ой")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "ы")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, f_a).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, f_a).

% --- f_a_velar
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ой")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, f_a_velar).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, f_a_velar).

% --- f_a_hush
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, f_a_hush).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, f_a_hush).

% --- f_ya
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ь")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, f_ya).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, f_ya).

% --- f_ija
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 2, "ия")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 2, "ии")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 2, "ии")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 2, "ией")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 2, "ии")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 2, "ии")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 2, "ий")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 2, "иям")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 2, "иями")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 2, "иях")) :- input_lemma(L), noun_class(L, f_ija).
form(L, "case=accusative;number=singular", @strip_suffix_add(L, 2, "ию")) :- input_lemma(L), noun_class(L, f_ija).

% --- f_soft
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "ь")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ью")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, f_soft).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, f_soft).

% --- f_soft_hush
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "ь")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ью")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, f_soft_hush).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, f_soft_hush).

% --- n_o
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "о")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "у")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ом")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "а")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ам")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ами")) :- input_lemma(L), noun_class(L, n_o).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ах")) :- input_lemma(L), noun_class(L, n_o).

% --- n_e
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ем")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ей")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, n_e).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, n_e).

% --- n_ie
form(L, "case=nominative;number=singular", @strip_suffix_add(L, 1, "е")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=genitive;number=singular", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=dative;number=singular", @strip_suffix_add(L, 1, "ю")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=instrumental;number=singular", @strip_suffix_add(L, 1, "ем")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=prepositional;number=singular", @strip_suffix_add(L, 1, "и")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 1, "я")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "й")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 1, "ям")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 1, "ями")) :- input_lemma(L), noun_class(L, n_ie).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 1, "ях")) :- input_lemma(L), noun_class(L, n_ie).

% --- accusative derived from the nominative or the genitive
form(L, "case=accusative;number=singular", F) :- noun_class(L, C), acc_from_nominative(C),
    not animate_masculine(L), form(L, "case=nominative;number=singular", F).
form(L, "case=accusative;number=singular", F) :- animate_masculine(L), form(L, "case=genitive;number=singular", F).
animate_masculine(L) :- animate(L), noun_class(L, C), class_gender(C, masculine).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), not animate(L), form(L, "case=nominative;number=plural", F).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), animate(L), form(L, "case=genitive;number=plural", F).
