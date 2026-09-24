% rules/fi/adjectives.lp
% Finnish adjective comparison (feature: degree). Classes (adj_class/2):
%   o_u   iso     -> isompi, isoin        (lemma + -mpi / -in)
%   a_ae  vanha   -> vanhempi, vanhin     (final a/ä -> -empi / -in)
%   nen   sininen -> sinisempi, sinisin
%   long  vapaa   -> vapaampi, vapain
% Irregular comparison is listed (hyvä -> parempi, paras).
%
% Adjectives with consonant gradation (helppo -> helpompi) are listed too.
%
% Not covered: case inflection of adjectives (they inflect like nouns; see
% nouns.lp).

form(L, "degree=positive", L) :- input_lemma(L).

form(L, "degree=comparative", @suffix(L, "mpi")) :- input_lemma(L), adj_class(L, o_u).
form(L, "degree=superlative", @suffix(L, "in")) :- input_lemma(L), adj_class(L, o_u).
form(L, "degree=comparative", @strip_suffix_add(L, 1, "empi")) :- input_lemma(L), adj_class(L, a_ae).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), adj_class(L, a_ae).
form(L, "degree=comparative", @strip_suffix_add(L, 3, "sempi")) :- input_lemma(L), adj_class(L, nen).
form(L, "degree=superlative", @strip_suffix_add(L, 3, "sin")) :- input_lemma(L), adj_class(L, nen).
form(L, "degree=comparative", @suffix(L, "mpi")) :- input_lemma(L), adj_class(L, long).
form(L, "degree=superlative", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), adj_class(L, long).

adj_class("iso", o_u). adj_class("hullu", o_u). adj_class("paksu", o_u).
adj_class("vanha", a_ae). adj_class("kova", a_ae). adj_class("ruma", a_ae). adj_class("kylmä", a_ae). adj_class("tyhmä", a_ae).
adj_class("sininen", nen). adj_class("iloinen", nen).
adj_class("vapaa", long).

irregular("hyvä"). form("hyvä", "degree=comparative", "parempi"). form("hyvä", "degree=superlative", "paras").
irregular("pitkä"). form("pitkä", "degree=comparative", "pidempi"). form("pitkä", "degree=superlative", "pisin").
irregular("uusi"). form("uusi", "degree=comparative", "uudempi"). form("uusi", "degree=superlative", "uusin").
irregular("pieni"). form("pieni", "degree=comparative", "pienempi"). form("pieni", "degree=superlative", "pienin").
irregular("suuri"). form("suuri", "degree=comparative", "suurempi"). form("suuri", "degree=superlative", "suurin").
irregular("nuori"). form("nuori", "degree=comparative", "nuorempi"). form("nuori", "degree=superlative", "nuorin").
irregular("kaunis"). form("kaunis", "degree=comparative", "kauniimpi"). form("kaunis", "degree=superlative", "kaunein").
irregular("lyhyt"). form("lyhyt", "degree=comparative", "lyhyempi"). form("lyhyt", "degree=superlative", "lyhyin").
irregular("kallis"). form("kallis", "degree=comparative", "kalliimpi"). form("kallis", "degree=superlative", "kallein").
irregular("helppo"). form("helppo", "degree=comparative", "helpompi"). form("helppo", "degree=superlative", "helpoin").
