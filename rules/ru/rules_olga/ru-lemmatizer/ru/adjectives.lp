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
adj_class("русский", velar). adj_class("высокий", velar). adj_class("лёгкий", velar). adj_class("дорогой", velar). adj_class("другой", velar).
adj_class("хороший", hush). adj_class("свежий", hush). adj_class("общий", hush).
    comparative("молодой", "моложе"). comparative("старый", "старше"). comparative("высокий", "выше"). comparative("дорогой", "дороже"). comparative("простой", "проще"). comparative("лёгкий", "легче").

% Suppletive comparatives as irregular, every attested form listed.
irregular("хороший").
form("хороший", "animacy=animate;case=accusative;gender=masculine;number=singular", "хорошего").
form("хороший", "animacy=animate;case=accusative;number=plural", "хороших").
form("хороший", "animacy=inanimate;case=accusative;gender=masculine;number=singular", "хороший").
form("хороший", "animacy=inanimate;case=accusative;number=plural", "хорошие").
form("хороший", "case=accusative;gender=feminine;number=singular", "хорошую").
form("хороший", "case=accusative;gender=neuter;number=singular", "хорошее").
form("хороший", "case=dative;gender=feminine;number=singular", "хорошей").
form("хороший", "case=dative;gender=masculine;number=singular", "хорошему").
form("хороший", "case=dative;gender=neuter;number=singular", "хорошему").
form("хороший", "case=dative;number=plural", "хорошим").
form("хороший", "case=genitive;gender=feminine;number=singular", "хорошей").
form("хороший", "case=genitive;gender=masculine;number=singular", "хорошего").
form("хороший", "case=genitive;gender=neuter;number=singular", "хорошего").
form("хороший", "case=genitive;number=plural", "хороших").
form("хороший", "case=instrumental;gender=feminine;number=singular", "хорошей").
form("хороший", "case=instrumental;gender=masculine;number=singular", "хорошим").
form("хороший", "case=instrumental;gender=neuter;number=singular", "хорошим").
form("хороший", "case=instrumental;number=plural", "хорошими").
form("хороший", "case=nominative;gender=feminine;number=singular", "хорошая").
form("хороший", "case=nominative;gender=masculine;number=singular", "хороший").
form("хороший", "case=nominative;gender=neuter;number=singular", "хорошее").
form("хороший", "case=nominative;number=plural", "хорошие").
form("хороший", "case=prepositional;gender=feminine;number=singular", "хорошей").
form("хороший", "case=prepositional;gender=masculine;number=singular", "хорошем").
form("хороший", "case=prepositional;gender=neuter;number=singular", "хорошем").
form("хороший", "case=prepositional;number=plural", "хороших").
form("хороший", "degree=comparative", "лучше").
form("хороший", "gender=feminine;number=singular;variant=short", "хороша").
form("хороший", "gender=masculine;number=singular;variant=short", "хорош").
form("хороший", "gender=neuter;number=singular;variant=short", "хорошо").
form("хороший", "number=plural;variant=short", "хороши").
irregular("плохой").
form("плохой", "animacy=animate;case=accusative;gender=masculine;number=singular", "плохого").
form("плохой", "animacy=animate;case=accusative;number=plural", "плохих").
form("плохой", "animacy=inanimate;case=accusative;gender=masculine;number=singular", "плохой").
form("плохой", "animacy=inanimate;case=accusative;number=plural", "плохие").
form("плохой", "case=accusative;gender=feminine;number=singular", "плохую").
form("плохой", "case=accusative;gender=neuter;number=singular", "плохое").
form("плохой", "case=dative;gender=feminine;number=singular", "плохой").
form("плохой", "case=dative;gender=masculine;number=singular", "плохому").
form("плохой", "case=dative;gender=neuter;number=singular", "плохому").
form("плохой", "case=dative;number=plural", "плохим").
form("плохой", "case=genitive;gender=feminine;number=singular", "плохой").
form("плохой", "case=genitive;gender=masculine;number=singular", "плохого").
form("плохой", "case=genitive;gender=neuter;number=singular", "плохого").
form("плохой", "case=genitive;number=plural", "плохих").
form("плохой", "case=instrumental;gender=feminine;number=singular", "плохой").
form("плохой", "case=instrumental;gender=masculine;number=singular", "плохим").
form("плохой", "case=instrumental;gender=neuter;number=singular", "плохим").
form("плохой", "case=instrumental;number=plural", "плохими").
form("плохой", "case=nominative;gender=feminine;number=singular", "плохая").
form("плохой", "case=nominative;gender=masculine;number=singular", "плохой").
form("плохой", "case=nominative;gender=neuter;number=singular", "плохое").
form("плохой", "case=nominative;number=plural", "плохие").
form("плохой", "case=prepositional;gender=feminine;number=singular", "плохой").
form("плохой", "case=prepositional;gender=masculine;number=singular", "плохом").
form("плохой", "case=prepositional;gender=neuter;number=singular", "плохом").
form("плохой", "case=prepositional;number=plural", "плохих").
form("плохой", "degree=comparative", "хуже").
form("плохой", "gender=feminine;number=singular;variant=short", "плоха").
form("плохой", "gender=masculine;number=singular;variant=short", "плох").
form("плохой", "gender=neuter;number=singular;variant=short", "плохо").
form("плохой", "number=plural;variant=short", "плохи").
irregular("большой").
form("большой", "animacy=animate;case=accusative;gender=masculine;number=singular", "большого").
form("большой", "animacy=animate;case=accusative;number=plural", "больших").
form("большой", "animacy=inanimate;case=accusative;gender=masculine;number=singular", "большой").
form("большой", "animacy=inanimate;case=accusative;number=plural", "большие").
form("большой", "case=accusative;gender=feminine;number=singular", "большую").
form("большой", "case=accusative;gender=neuter;number=singular", "большое").
form("большой", "case=dative;gender=feminine;number=singular", "большой").
form("большой", "case=dative;gender=masculine;number=singular", "большому").
form("большой", "case=dative;gender=neuter;number=singular", "большому").
form("большой", "case=dative;number=plural", "большим").
form("большой", "case=genitive;gender=feminine;number=singular", "большой").
form("большой", "case=genitive;gender=masculine;number=singular", "большого").
form("большой", "case=genitive;gender=neuter;number=singular", "большого").
form("большой", "case=genitive;number=plural", "больших").
form("большой", "case=instrumental;gender=feminine;number=singular", "большой").
form("большой", "case=instrumental;gender=masculine;number=singular", "большим").
form("большой", "case=instrumental;gender=neuter;number=singular", "большим").
form("большой", "case=instrumental;number=plural", "большими").
form("большой", "case=nominative;gender=feminine;number=singular", "большая").
form("большой", "case=nominative;gender=masculine;number=singular", "большой").
form("большой", "case=nominative;gender=neuter;number=singular", "большое").
form("большой", "case=nominative;number=plural", "большие").
form("большой", "case=prepositional;gender=feminine;number=singular", "большой").
form("большой", "case=prepositional;gender=masculine;number=singular", "большом").
form("большой", "case=prepositional;gender=neuter;number=singular", "большом").
form("большой", "case=prepositional;number=plural", "больших").
form("большой", "degree=comparative", "больше").
form("большой", "gender=feminine;number=singular;variant=short", "велика").
form("большой", "gender=masculine;number=singular;variant=short", "велик").
form("большой", "gender=neuter;number=singular;variant=short", "велико").
form("большой", "number=plural;variant=short", "велики").
irregular("маленький").
form("маленький", "animacy=animate;case=accusative;gender=masculine;number=singular", "маленького").
form("маленький", "animacy=animate;case=accusative;number=plural", "маленьких").
form("маленький", "animacy=inanimate;case=accusative;gender=masculine;number=singular", "маленький").
form("маленький", "animacy=inanimate;case=accusative;number=plural", "маленькие").
form("маленький", "case=accusative;gender=feminine;number=singular", "маленькую").
form("маленький", "case=accusative;gender=neuter;number=singular", "маленькое").
form("маленький", "case=dative;gender=feminine;number=singular", "маленькой").
form("маленький", "case=dative;gender=masculine;number=singular", "маленькому").
form("маленький", "case=dative;gender=neuter;number=singular", "маленькому").
form("маленький", "case=dative;number=plural", "маленьким").
form("маленький", "case=genitive;gender=feminine;number=singular", "маленькой").
form("маленький", "case=genitive;gender=masculine;number=singular", "маленького").
form("маленький", "case=genitive;gender=neuter;number=singular", "маленького").
form("маленький", "case=genitive;number=plural", "маленьких").
form("маленький", "case=instrumental;gender=feminine;number=singular", "маленькой").
form("маленький", "case=instrumental;gender=masculine;number=singular", "маленьким").
form("маленький", "case=instrumental;gender=neuter;number=singular", "маленьким").
form("маленький", "case=instrumental;number=plural", "маленькими").
form("маленький", "case=nominative;gender=feminine;number=singular", "маленькая").
form("маленький", "case=nominative;gender=masculine;number=singular", "маленький").
form("маленький", "case=nominative;gender=neuter;number=singular", "маленькое").
form("маленький", "case=nominative;number=plural", "маленькие").
form("маленький", "case=prepositional;gender=feminine;number=singular", "маленькой").
form("маленький", "case=prepositional;gender=masculine;number=singular", "маленьком").
form("маленький", "case=prepositional;gender=neuter;number=singular", "маленьком").
form("маленький", "case=prepositional;number=plural", "маленьких").
form("маленький", "degree=comparative", "меньше").
form("маленький", "gender=feminine;number=singular;variant=short", "мала").
form("маленький", "gender=masculine;number=singular;variant=short", "мал").
form("маленький", "gender=neuter;number=singular;variant=short", "мало").
form("маленький", "number=plural;variant=short", "малы").
form("хороший", "degree=superlative", "лучший").
