% rules/de/nouns.lp
% German noun plurals (nominative). The singular is the lemma itself; the
% default plural adds "-e" (Hund -> Hunde). German has several plural classes
% (-e, -er with umlaut, -(e)n, -s, zero); lemmas outside the "-e" class are
% listed as exceptions below.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).

% default plural class: "-e" (Hund -> Hunde, Tag -> Tage, Tisch -> Tische)
form(Lemma, "number=plural", @suffix(Lemma, "e")) :- input_lemma(Lemma), not irregular(Lemma).

irregular("Mann").
form("Mann", "number=plural", "Männer").

irregular("Kind").
form("Kind", "number=plural", "Kinder").

irregular("Buch").
form("Buch", "number=plural", "Bücher").

irregular("Haus").
form("Haus", "number=plural", "Häuser").

irregular("Frau").
form("Frau", "number=plural", "Frauen").

irregular("Blume").
form("Blume", "number=plural", "Blumen").

irregular("Auto").
form("Auto", "number=plural", "Autos").

irregular("Apfel").
form("Apfel", "number=plural", "Äpfel").

irregular("Lehrer").
form("Lehrer", "number=plural", "Lehrer").

irregular("Mädchen").
form("Mädchen", "number=plural", "Mädchen").

% "Museum" -> "Museen": drop "um", add "en".
irregular("Museum").
form("Museum", "number=plural", @strip_suffix_add("Museum", 2, "en")).
