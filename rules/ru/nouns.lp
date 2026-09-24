% rules/ru/nouns.lp
% Russian noun declension: 6 cases x 2 numbers (features: case, number).
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned a
% declension class with noun_class/2 (a lemma without a class produces no
% forms), and animate nouns are marked with animate/1.
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
% and list all 12 forms.
%
% Not covered: fleeting vowels in regular classes (only in listed nouns),
% stress-dependent endings other than -ем/-ём, second genitive/locative
% (чашка чаю, в лесу), and nouns in -ц (улица -> улицей).

% --- m_hard
class_gender(m_hard, masculine).
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
acc_from_nominative(m_hard).

% --- m_velar
class_gender(m_velar, masculine).
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
acc_from_nominative(m_velar).

% --- m_hush
class_gender(m_hush, masculine).
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
acc_from_nominative(m_hush).

% --- m_soft
class_gender(m_soft, masculine).
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
acc_from_nominative(m_soft).

% --- m_soft_stressed
class_gender(m_soft_stressed, masculine).
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
acc_from_nominative(m_soft_stressed).

% --- m_j
class_gender(m_j, masculine).
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
acc_from_nominative(m_j).

% --- f_a
class_gender(f_a, feminine).
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
class_gender(f_a_velar, feminine).
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
class_gender(f_a_hush, feminine).
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
class_gender(f_ya, feminine).
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
class_gender(f_ija, feminine).
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
class_gender(f_soft, feminine).
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
acc_from_nominative(f_soft).

% --- f_soft_hush
class_gender(f_soft_hush, feminine).
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
acc_from_nominative(f_soft_hush).

% --- n_o
class_gender(n_o, neuter).
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
acc_from_nominative(n_o).

% --- n_e
class_gender(n_e, neuter).
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
acc_from_nominative(n_e).

% --- n_ie
class_gender(n_ie, neuter).
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
acc_from_nominative(n_ie).

% --- accusative derived from the nominative or the genitive
form(L, "case=accusative;number=singular", F) :- noun_class(L, C), acc_from_nominative(C),
    not animate_masculine(L), form(L, "case=nominative;number=singular", F).
form(L, "case=accusative;number=singular", F) :- animate_masculine(L), form(L, "case=genitive;number=singular", F).
animate_masculine(L) :- animate(L), noun_class(L, C), class_gender(C, masculine).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), not animate(L), form(L, "case=nominative;number=plural", F).
form(L, "case=accusative;number=plural", F) :- noun_class(L, _), animate(L), form(L, "case=genitive;number=plural", F).

% --- class membership and animacy
noun_class("стол", m_hard). noun_class("журнал", m_hard). noun_class("завод", m_hard). noun_class("магазин", m_hard). noun_class("телефон", m_hard). noun_class("студент", m_hard). noun_class("турист", m_hard).
noun_class("урок", m_velar). noun_class("парк", m_velar). noun_class("язык", m_velar). noun_class("учебник", m_velar). noun_class("мальчик", m_velar).
noun_class("карандаш", m_hush). noun_class("нож", m_hush). noun_class("этаж", m_hush). noun_class("врач", m_hush).
noun_class("портфель", m_soft). noun_class("гость", m_soft).
noun_class("словарь", m_soft_stressed). noun_class("рубль", m_soft_stressed). noun_class("король", m_soft_stressed).
noun_class("музей", m_j). noun_class("трамвай", m_j). noun_class("герой", m_j).
noun_class("лампа", f_a). noun_class("школа", f_a). noun_class("комната", f_a). noun_class("газета", f_a). noun_class("машина", f_a). noun_class("мама", f_a).
noun_class("книга", f_a_velar). noun_class("рука", f_a_velar). noun_class("нога", f_a_velar). noun_class("собака", f_a_velar).
noun_class("задача", f_a_hush). noun_class("дача", f_a_hush). noun_class("встреча", f_a_hush).
noun_class("неделя", f_ya). noun_class("дыня", f_ya).
noun_class("станция", f_ija). noun_class("армия", f_ija). noun_class("история", f_ija).
noun_class("дверь", f_soft). noun_class("площадь", f_soft). noun_class("тетрадь", f_soft).
noun_class("ночь", f_soft_hush). noun_class("вещь", f_soft_hush). noun_class("речь", f_soft_hush).
noun_class("слово", n_o). noun_class("место", n_o). noun_class("дело", n_o). noun_class("вино", n_o).
noun_class("море", n_e). noun_class("поле", n_e).
noun_class("здание", n_ie). noun_class("упражнение", n_ie). noun_class("занятие", n_ie).
animate("студент"). animate("турист"). animate("мальчик"). animate("врач"). animate("гость"). animate("король"). animate("герой"). animate("мама"). animate("собака").

% --- irregular nouns (all forms listed)
irregular("ребёнок").
form("ребёнок", "case=nominative;number=singular", "ребёнок"). form("ребёнок", "case=genitive;number=singular", "ребёнка"). form("ребёнок", "case=dative;number=singular", "ребёнку"). form("ребёнок", "case=accusative;number=singular", "ребёнка"). form("ребёнок", "case=instrumental;number=singular", "ребёнком"). form("ребёнок", "case=prepositional;number=singular", "ребёнке").
form("ребёнок", "case=nominative;number=plural", "дети"). form("ребёнок", "case=genitive;number=plural", "детей"). form("ребёнок", "case=dative;number=plural", "детям"). form("ребёнок", "case=accusative;number=plural", "детей"). form("ребёнок", "case=instrumental;number=plural", "детьми"). form("ребёнок", "case=prepositional;number=plural", "детях").
irregular("человек").
form("человек", "case=nominative;number=singular", "человек"). form("человек", "case=genitive;number=singular", "человека"). form("человек", "case=dative;number=singular", "человеку"). form("человек", "case=accusative;number=singular", "человека"). form("человек", "case=instrumental;number=singular", "человеком"). form("человек", "case=prepositional;number=singular", "человеке").
form("человек", "case=nominative;number=plural", "люди"). form("человек", "case=genitive;number=plural", "людей"). form("человек", "case=dative;number=plural", "людям"). form("человек", "case=accusative;number=plural", "людей"). form("человек", "case=instrumental;number=plural", "людьми"). form("человек", "case=prepositional;number=plural", "людях").
irregular("мать").
form("мать", "case=nominative;number=singular", "мать"). form("мать", "case=genitive;number=singular", "матери"). form("мать", "case=dative;number=singular", "матери"). form("мать", "case=accusative;number=singular", "мать"). form("мать", "case=instrumental;number=singular", "матерью"). form("мать", "case=prepositional;number=singular", "матери").
form("мать", "case=nominative;number=plural", "матери"). form("мать", "case=genitive;number=plural", "матерей"). form("мать", "case=dative;number=plural", "матерям"). form("мать", "case=accusative;number=plural", "матерей"). form("мать", "case=instrumental;number=plural", "матерями"). form("мать", "case=prepositional;number=plural", "матерях").
irregular("дочь").
form("дочь", "case=nominative;number=singular", "дочь"). form("дочь", "case=genitive;number=singular", "дочери"). form("дочь", "case=dative;number=singular", "дочери"). form("дочь", "case=accusative;number=singular", "дочь"). form("дочь", "case=instrumental;number=singular", "дочерью"). form("дочь", "case=prepositional;number=singular", "дочери").
form("дочь", "case=nominative;number=plural", "дочери"). form("дочь", "case=genitive;number=plural", "дочерей"). form("дочь", "case=dative;number=plural", "дочерям"). form("дочь", "case=accusative;number=plural", "дочерей"). form("дочь", "case=instrumental;number=plural", "дочерьми"). form("дочь", "case=prepositional;number=plural", "дочерях").
irregular("время").
form("время", "case=nominative;number=singular", "время"). form("время", "case=genitive;number=singular", "времени"). form("время", "case=dative;number=singular", "времени"). form("время", "case=accusative;number=singular", "время"). form("время", "case=instrumental;number=singular", "временем"). form("время", "case=prepositional;number=singular", "времени").
form("время", "case=nominative;number=plural", "времена"). form("время", "case=genitive;number=plural", "времён"). form("время", "case=dative;number=plural", "временам"). form("время", "case=accusative;number=plural", "времена"). form("время", "case=instrumental;number=plural", "временами"). form("время", "case=prepositional;number=plural", "временах").
irregular("имя").
form("имя", "case=nominative;number=singular", "имя"). form("имя", "case=genitive;number=singular", "имени"). form("имя", "case=dative;number=singular", "имени"). form("имя", "case=accusative;number=singular", "имя"). form("имя", "case=instrumental;number=singular", "именем"). form("имя", "case=prepositional;number=singular", "имени").
form("имя", "case=nominative;number=plural", "имена"). form("имя", "case=genitive;number=plural", "имён"). form("имя", "case=dative;number=plural", "именам"). form("имя", "case=accusative;number=plural", "имена"). form("имя", "case=instrumental;number=plural", "именами"). form("имя", "case=prepositional;number=plural", "именах").
irregular("дом").
form("дом", "case=nominative;number=singular", "дом"). form("дом", "case=genitive;number=singular", "дома"). form("дом", "case=dative;number=singular", "дому"). form("дом", "case=accusative;number=singular", "дом"). form("дом", "case=instrumental;number=singular", "домом"). form("дом", "case=prepositional;number=singular", "доме").
form("дом", "case=nominative;number=plural", "дома"). form("дом", "case=genitive;number=plural", "домов"). form("дом", "case=dative;number=plural", "домам"). form("дом", "case=accusative;number=plural", "дома"). form("дом", "case=instrumental;number=plural", "домами"). form("дом", "case=prepositional;number=plural", "домах").
irregular("город").
form("город", "case=nominative;number=singular", "город"). form("город", "case=genitive;number=singular", "города"). form("город", "case=dative;number=singular", "городу"). form("город", "case=accusative;number=singular", "город"). form("город", "case=instrumental;number=singular", "городом"). form("город", "case=prepositional;number=singular", "городе").
form("город", "case=nominative;number=plural", "города"). form("город", "case=genitive;number=plural", "городов"). form("город", "case=dative;number=plural", "городам"). form("город", "case=accusative;number=plural", "города"). form("город", "case=instrumental;number=plural", "городами"). form("город", "case=prepositional;number=plural", "городах").
irregular("брат").
form("брат", "case=nominative;number=singular", "брат"). form("брат", "case=genitive;number=singular", "брата"). form("брат", "case=dative;number=singular", "брату"). form("брат", "case=accusative;number=singular", "брата"). form("брат", "case=instrumental;number=singular", "братом"). form("брат", "case=prepositional;number=singular", "брате").
form("брат", "case=nominative;number=plural", "братья"). form("брат", "case=genitive;number=plural", "братьев"). form("брат", "case=dative;number=plural", "братьям"). form("брат", "case=accusative;number=plural", "братьев"). form("брат", "case=instrumental;number=plural", "братьями"). form("брат", "case=prepositional;number=plural", "братьях").
irregular("друг").
form("друг", "case=nominative;number=singular", "друг"). form("друг", "case=genitive;number=singular", "друга"). form("друг", "case=dative;number=singular", "другу"). form("друг", "case=accusative;number=singular", "друга"). form("друг", "case=instrumental;number=singular", "другом"). form("друг", "case=prepositional;number=singular", "друге").
form("друг", "case=nominative;number=plural", "друзья"). form("друг", "case=genitive;number=plural", "друзей"). form("друг", "case=dative;number=plural", "друзьям"). form("друг", "case=accusative;number=plural", "друзей"). form("друг", "case=instrumental;number=plural", "друзьями"). form("друг", "case=prepositional;number=plural", "друзьях").
irregular("день").
form("день", "case=nominative;number=singular", "день"). form("день", "case=genitive;number=singular", "дня"). form("день", "case=dative;number=singular", "дню"). form("день", "case=accusative;number=singular", "день"). form("день", "case=instrumental;number=singular", "днём"). form("день", "case=prepositional;number=singular", "дне").
form("день", "case=nominative;number=plural", "дни"). form("день", "case=genitive;number=plural", "дней"). form("день", "case=dative;number=plural", "дням"). form("день", "case=accusative;number=plural", "дни"). form("день", "case=instrumental;number=plural", "днями"). form("день", "case=prepositional;number=plural", "днях").
irregular("отец").
form("отец", "case=nominative;number=singular", "отец"). form("отец", "case=genitive;number=singular", "отца"). form("отец", "case=dative;number=singular", "отцу"). form("отец", "case=accusative;number=singular", "отца"). form("отец", "case=instrumental;number=singular", "отцом"). form("отец", "case=prepositional;number=singular", "отце").
form("отец", "case=nominative;number=plural", "отцы"). form("отец", "case=genitive;number=plural", "отцов"). form("отец", "case=dative;number=plural", "отцам"). form("отец", "case=accusative;number=plural", "отцов"). form("отец", "case=instrumental;number=plural", "отцами"). form("отец", "case=prepositional;number=plural", "отцах").
irregular("сестра").
form("сестра", "case=nominative;number=singular", "сестра"). form("сестра", "case=genitive;number=singular", "сестры"). form("сестра", "case=dative;number=singular", "сестре"). form("сестра", "case=accusative;number=singular", "сестру"). form("сестра", "case=instrumental;number=singular", "сестрой"). form("сестра", "case=prepositional;number=singular", "сестре").
form("сестра", "case=nominative;number=plural", "сёстры"). form("сестра", "case=genitive;number=plural", "сестёр"). form("сестра", "case=dative;number=plural", "сёстрам"). form("сестра", "case=accusative;number=plural", "сестёр"). form("сестра", "case=instrumental;number=plural", "сёстрами"). form("сестра", "case=prepositional;number=plural", "сёстрах").
irregular("окно").
form("окно", "case=nominative;number=singular", "окно"). form("окно", "case=genitive;number=singular", "окна"). form("окно", "case=dative;number=singular", "окну"). form("окно", "case=accusative;number=singular", "окно"). form("окно", "case=instrumental;number=singular", "окном"). form("окно", "case=prepositional;number=singular", "окне").
form("окно", "case=nominative;number=plural", "окна"). form("окно", "case=genitive;number=plural", "окон"). form("окно", "case=dative;number=plural", "окнам"). form("окно", "case=accusative;number=plural", "окна"). form("окно", "case=instrumental;number=plural", "окнами"). form("окно", "case=prepositional;number=plural", "окнах").
