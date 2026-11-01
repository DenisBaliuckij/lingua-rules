% rules/ru/adjectives.lp
% Russian adjectives (features: case, gender, number, animacy; degree).
% The lemma is the masculine nominative singular; the endings replace its last
% two letters (-ый, -ий, -ой). Classes (adj_class/2):
%   hard   новый   -> нового, новому, новым; новая; новые    (also молодой)
%   soft   синий   -> синего, синему, синим; синяя; синие
%   velar  русский -> русского, русским; русская; русские    (also большой, дорогой)
%   hush   хороший -> хорошего, хорошим; хорошая; хорошие
% Keys: "case=...;gender=...;number=singular", "case=...;number=plural"; the
% masculine singular and plural accusative depend on animacy:
% "animacy=animate;case=accusative;gender=masculine;number=singular" (нового),
% "animacy=inanimate;..." (новый). The neuter accusative equals the nominative.
% Comparative: hard and soft adjectives take -ее (новее, синее); others are
% listed (хороший -> лучше).
%
% Not covered: short forms (нов, нова), superlative (новейший, самый новый),
% the alternative instrumental -ою/-ею.

% --- hard
form(L, "case=nominative;gender=masculine;number=singular", L) :- input_lemma(L), adj_class(L, hard).
form(L, "case=genitive;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ого")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=dative;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ому")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=instrumental;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ым")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=prepositional;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ом")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=nominative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ая")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=genitive;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=dative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=instrumental;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=prepositional;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=nominative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ое")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=genitive;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ого")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=dative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ому")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=instrumental;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ым")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=prepositional;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ом")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=accusative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ую")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 2, "ые")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 2, "ых")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 2, "ым")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 2, "ыми")) :- input_lemma(L), adj_class(L, hard).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 2, "ых")) :- input_lemma(L), adj_class(L, hard).

% --- soft
form(L, "case=nominative;gender=masculine;number=singular", L) :- input_lemma(L), adj_class(L, soft).
form(L, "case=genitive;gender=masculine;number=singular", @strip_suffix_add(L, 2, "его")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=dative;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ему")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=instrumental;gender=masculine;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=prepositional;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=nominative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "яя")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=genitive;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=dative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=instrumental;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=prepositional;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=nominative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=genitive;gender=neuter;number=singular", @strip_suffix_add(L, 2, "его")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=dative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ему")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=instrumental;gender=neuter;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=prepositional;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=accusative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "юю")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 2, "ие")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 2, "ими")) :- input_lemma(L), adj_class(L, soft).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, soft).

% --- velar
form(L, "case=nominative;gender=masculine;number=singular", L) :- input_lemma(L), adj_class(L, velar).
form(L, "case=genitive;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ого")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=dative;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ому")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=instrumental;gender=masculine;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=prepositional;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ом")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=nominative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ая")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=genitive;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=dative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=instrumental;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=prepositional;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ой")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=nominative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ое")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=genitive;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ого")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=dative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ому")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=instrumental;gender=neuter;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=prepositional;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ом")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=accusative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ую")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 2, "ие")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 2, "ими")) :- input_lemma(L), adj_class(L, velar).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, velar).

% --- hush
form(L, "case=nominative;gender=masculine;number=singular", L) :- input_lemma(L), adj_class(L, hush).
form(L, "case=genitive;gender=masculine;number=singular", @strip_suffix_add(L, 2, "его")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=dative;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ему")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=instrumental;gender=masculine;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=prepositional;gender=masculine;number=singular", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=nominative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ая")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=genitive;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=dative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=instrumental;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=prepositional;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ей")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=nominative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=genitive;gender=neuter;number=singular", @strip_suffix_add(L, 2, "его")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=dative;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ему")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=instrumental;gender=neuter;number=singular", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=prepositional;gender=neuter;number=singular", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=accusative;gender=feminine;number=singular", @strip_suffix_add(L, 2, "ую")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=nominative;number=plural", @strip_suffix_add(L, 2, "ие")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=dative;number=plural", @strip_suffix_add(L, 2, "им")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=instrumental;number=plural", @strip_suffix_add(L, 2, "ими")) :- input_lemma(L), adj_class(L, hush).
form(L, "case=prepositional;number=plural", @strip_suffix_add(L, 2, "их")) :- input_lemma(L), adj_class(L, hush).

% --- accusative: neuter = nominative; masculine singular and plural by animacy
form(L, "case=accusative;gender=neuter;number=singular", F) :- adj_class(L, _), form(L, "case=nominative;gender=neuter;number=singular", F).
form(L, "animacy=inanimate;case=accusative;gender=masculine;number=singular", F) :- adj_class(L, _), form(L, "case=nominative;gender=masculine;number=singular", F).
form(L, "animacy=animate;case=accusative;gender=masculine;number=singular", F) :- adj_class(L, _), form(L, "case=genitive;gender=masculine;number=singular", F).
form(L, "animacy=inanimate;case=accusative;number=plural", F) :- adj_class(L, _), form(L, "case=nominative;number=plural", F).
form(L, "animacy=animate;case=accusative;number=plural", F) :- adj_class(L, _), form(L, "case=genitive;number=plural", F).

% --- comparative
listed_comparative(L) :- comparative(L, _).
form(L, "degree=comparative", F) :- input_lemma(L), comparative(L, F).
form(L, "degree=comparative", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, hard), not listed_comparative(L).
form(L, "degree=comparative", @strip_suffix_add(L, 2, "ее")) :- input_lemma(L), adj_class(L, soft), not listed_comparative(L).

% --- class membership
adj_class("новый", hard). adj_class("красивый", hard). adj_class("старый", hard). adj_class("белый", hard). adj_class("молодой", hard). adj_class("простой", hard). adj_class("интересный", hard).
adj_class("синий", soft). adj_class("последний", soft). adj_class("летний", soft). adj_class("зимний", soft).
adj_class("русский", velar). adj_class("маленький", velar). adj_class("высокий", velar). adj_class("лёгкий", velar). adj_class("дорогой", velar). adj_class("большой", velar). adj_class("другой", velar).
adj_class("хороший", hush). adj_class("свежий", hush). adj_class("общий", hush).
comparative("хороший", "лучше"). comparative("плохой", "хуже"). comparative("большой", "больше"). comparative("маленький", "меньше"). comparative("молодой", "моложе"). comparative("старый", "старше"). comparative("высокий", "выше"). comparative("дорогой", "дороже"). comparative("простой", "проще"). comparative("лёгкий", "легче").
