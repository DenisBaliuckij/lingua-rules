% rules/en/nouns.lp
% English noun pluralization. Regular nouns take an "s" suffix; any lemma
% flagged irregular/1 is excluded from the regular rule via default negation
% and gets its plural form from an explicit exception fact instead.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
form(Lemma, "number=plural", @suffix(Lemma, "s")) :- input_lemma(Lemma), not irregular(Lemma).

irregular("child").
form("child", "number=plural", "children").

irregular("man").
form("man", "number=plural", "men").

irregular("woman").
form("woman", "number=plural", "women").

irregular("mouse").
form("mouse", "number=plural", "mice").

irregular("foot").
form("foot", "number=plural", "feet").

irregular("tooth").
form("tooth", "number=plural", "teeth").

irregular("goose").
form("goose", "number=plural", "geese").

irregular("person").
form("person", "number=plural", "people").

irregular("sheep").
form("sheep", "number=plural", "sheep").

irregular("fish").
form("fish", "number=plural", "fish").

% Spelling-driven plurals, written by hand with the string helpers.
% consonant + "y" -> "ies"
irregular("city").
form("city", "number=plural", @strip_suffix_add("city", 1, "ies")).
irregular("baby").
form("baby", "number=plural", @strip_suffix_add("baby", 1, "ies")).
% sibilant endings (-s, -x, -ch, -sh) -> "es"
irregular("box").
form("box", "number=plural", @suffix("box", "es")).
irregular("bus").
form("bus", "number=plural", @suffix("bus", "es")).
irregular("church").
form("church", "number=plural", @suffix("church", "es")).
irregular("dish").
form("dish", "number=plural", @suffix("dish", "es")).
% "-f" / "-fe" -> "ves"
irregular("leaf").
form("leaf", "number=plural", @strip_suffix_add("leaf", 1, "ves")).
irregular("knife").
form("knife", "number=plural", @strip_suffix_add("knife", 2, "ves")).
