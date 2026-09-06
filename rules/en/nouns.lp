% rules/en/nouns.lp
% English noun pluralization. Regular nouns take an "s" suffix; any lemma
% flagged irregular/1 is excluded from the regular rule via default negation
% and gets its plural form from an explicit exception fact instead.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma), not irregular(Lemma).

irregular("child").
form("child", "number=plural", "children").
