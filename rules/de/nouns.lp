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

% --- class membership
noun_class("Hund", strong_e). noun_class("Tag", strong_e). noun_class("Tisch", strong_e). noun_class("Brief", strong_e). noun_class("Freund", strong_e). noun_class("Berg", strong_e). noun_class("Jahr", strong_e). noun_class("Spiel", strong_e). noun_class("Brot", strong_e).
noun_class("Kind", strong_er). noun_class("Bild", strong_er). noun_class("Lied", strong_er). noun_class("Feld", strong_er).
noun_class("Lehrer", strong_zero). noun_class("Fenster", strong_zero). noun_class("Zimmer", strong_zero). noun_class("Computer", strong_zero). noun_class("Onkel", strong_zero). noun_class("Schüler", strong_zero).
noun_class("Mädchen", strong_zero_n). noun_class("Wagen", strong_zero_n). noun_class("Kuchen", strong_zero_n). noun_class("Brötchen", strong_zero_n).
noun_class("Auto", s_plural). noun_class("Hotel", s_plural). noun_class("Kino", s_plural). noun_class("Radio", s_plural). noun_class("Foto", s_plural). noun_class("Handy", s_plural).
noun_class("Frau", fem_en). noun_class("Zeitung", fem_en). noun_class("Uhr", fem_en). noun_class("Tür", fem_en). noun_class("Wohnung", fem_en). noun_class("Arbeit", fem_en).
noun_class("Blume", fem_n). noun_class("Straße", fem_n). noun_class("Lampe", fem_n). noun_class("Schule", fem_n). noun_class("Tasche", fem_n). noun_class("Frage", fem_n).
noun_class("Lehrerin", fem_nen). noun_class("Freundin", fem_nen). noun_class("Ärztin", fem_nen). noun_class("Studentin", fem_nen).
noun_class("Student", weak_en). noun_class("Mensch", weak_en). noun_class("Präsident", weak_en). noun_class("Soldat", weak_en).
noun_class("Junge", weak_n). noun_class("Kollege", weak_n). noun_class("Kunde", weak_n). noun_class("Affe", weak_n).

% --- irregular nouns (all forms listed)
irregular("Mann").
form("Mann", "case=nominative;number=singular", "Mann"). form("Mann", "case=accusative;number=singular", "Mann"). form("Mann", "case=dative;number=singular", "Mann"). form("Mann", "case=genitive;number=singular", "Mannes").
form("Mann", "case=nominative;number=plural", "Männer"). form("Mann", "case=accusative;number=plural", "Männer"). form("Mann", "case=dative;number=plural", "Männern"). form("Mann", "case=genitive;number=plural", "Männer").
irregular("Buch").
form("Buch", "case=nominative;number=singular", "Buch"). form("Buch", "case=accusative;number=singular", "Buch"). form("Buch", "case=dative;number=singular", "Buch"). form("Buch", "case=genitive;number=singular", "Buches").
form("Buch", "case=nominative;number=plural", "Bücher"). form("Buch", "case=accusative;number=plural", "Bücher"). form("Buch", "case=dative;number=plural", "Büchern"). form("Buch", "case=genitive;number=plural", "Bücher").
irregular("Haus").
form("Haus", "case=nominative;number=singular", "Haus"). form("Haus", "case=accusative;number=singular", "Haus"). form("Haus", "case=dative;number=singular", "Haus"). form("Haus", "case=genitive;number=singular", "Hauses").
form("Haus", "case=nominative;number=plural", "Häuser"). form("Haus", "case=accusative;number=plural", "Häuser"). form("Haus", "case=dative;number=plural", "Häusern"). form("Haus", "case=genitive;number=plural", "Häuser").
irregular("Apfel").
form("Apfel", "case=nominative;number=singular", "Apfel"). form("Apfel", "case=accusative;number=singular", "Apfel"). form("Apfel", "case=dative;number=singular", "Apfel"). form("Apfel", "case=genitive;number=singular", "Apfels").
form("Apfel", "case=nominative;number=plural", "Äpfel"). form("Apfel", "case=accusative;number=plural", "Äpfel"). form("Apfel", "case=dative;number=plural", "Äpfeln"). form("Apfel", "case=genitive;number=plural", "Äpfel").
irregular("Vater").
form("Vater", "case=nominative;number=singular", "Vater"). form("Vater", "case=accusative;number=singular", "Vater"). form("Vater", "case=dative;number=singular", "Vater"). form("Vater", "case=genitive;number=singular", "Vaters").
form("Vater", "case=nominative;number=plural", "Väter"). form("Vater", "case=accusative;number=plural", "Väter"). form("Vater", "case=dative;number=plural", "Vätern"). form("Vater", "case=genitive;number=plural", "Väter").
irregular("Mutter").
form("Mutter", "case=nominative;number=singular", "Mutter"). form("Mutter", "case=accusative;number=singular", "Mutter"). form("Mutter", "case=dative;number=singular", "Mutter"). form("Mutter", "case=genitive;number=singular", "Mutter").
form("Mutter", "case=nominative;number=plural", "Mütter"). form("Mutter", "case=accusative;number=plural", "Mütter"). form("Mutter", "case=dative;number=plural", "Müttern"). form("Mutter", "case=genitive;number=plural", "Mütter").
irregular("Bruder").
form("Bruder", "case=nominative;number=singular", "Bruder"). form("Bruder", "case=accusative;number=singular", "Bruder"). form("Bruder", "case=dative;number=singular", "Bruder"). form("Bruder", "case=genitive;number=singular", "Bruders").
form("Bruder", "case=nominative;number=plural", "Brüder"). form("Bruder", "case=accusative;number=plural", "Brüder"). form("Bruder", "case=dative;number=plural", "Brüdern"). form("Bruder", "case=genitive;number=plural", "Brüder").
irregular("Tochter").
form("Tochter", "case=nominative;number=singular", "Tochter"). form("Tochter", "case=accusative;number=singular", "Tochter"). form("Tochter", "case=dative;number=singular", "Tochter"). form("Tochter", "case=genitive;number=singular", "Tochter").
form("Tochter", "case=nominative;number=plural", "Töchter"). form("Tochter", "case=accusative;number=plural", "Töchter"). form("Tochter", "case=dative;number=plural", "Töchtern"). form("Tochter", "case=genitive;number=plural", "Töchter").
irregular("Stadt").
form("Stadt", "case=nominative;number=singular", "Stadt"). form("Stadt", "case=accusative;number=singular", "Stadt"). form("Stadt", "case=dative;number=singular", "Stadt"). form("Stadt", "case=genitive;number=singular", "Stadt").
form("Stadt", "case=nominative;number=plural", "Städte"). form("Stadt", "case=accusative;number=plural", "Städte"). form("Stadt", "case=dative;number=plural", "Städten"). form("Stadt", "case=genitive;number=plural", "Städte").
irregular("Nacht").
form("Nacht", "case=nominative;number=singular", "Nacht"). form("Nacht", "case=accusative;number=singular", "Nacht"). form("Nacht", "case=dative;number=singular", "Nacht"). form("Nacht", "case=genitive;number=singular", "Nacht").
form("Nacht", "case=nominative;number=plural", "Nächte"). form("Nacht", "case=accusative;number=plural", "Nächte"). form("Nacht", "case=dative;number=plural", "Nächten"). form("Nacht", "case=genitive;number=plural", "Nächte").
irregular("Museum").
form("Museum", "case=nominative;number=singular", "Museum"). form("Museum", "case=accusative;number=singular", "Museum"). form("Museum", "case=dative;number=singular", "Museum"). form("Museum", "case=genitive;number=singular", "Museums").
form("Museum", "case=nominative;number=plural", "Museen"). form("Museum", "case=accusative;number=plural", "Museen"). form("Museum", "case=dative;number=plural", "Museen"). form("Museum", "case=genitive;number=plural", "Museen").
irregular("Herr").
form("Herr", "case=nominative;number=singular", "Herr"). form("Herr", "case=accusative;number=singular", "Herrn"). form("Herr", "case=dative;number=singular", "Herrn"). form("Herr", "case=genitive;number=singular", "Herrn").
form("Herr", "case=nominative;number=plural", "Herren"). form("Herr", "case=accusative;number=plural", "Herren"). form("Herr", "case=dative;number=plural", "Herren"). form("Herr", "case=genitive;number=plural", "Herren").
