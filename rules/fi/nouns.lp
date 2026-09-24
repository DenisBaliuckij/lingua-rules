% rules/fi/nouns.lp
% Finnish noun inflection: 11 cases x 2 numbers.
%
% Clingo cannot inspect how a lemma is spelled, so each lemma is assigned an
% inflection class with a noun_class/2 fact. A lemma without a class produces
% no forms. Neither class has consonant gradation.
%
% Classes:
%   back_o   ends in -o, back-vowel harmony (-ssa, -sta, -lla, ...)
%            plural stem = lemma + "i"                         talo, auto, kello
%   front_ae ends in -ä, front-vowel harmony (-ssä, -stä, -llä, ...)
%            plural stem = lemma with -ä replaced by "i"       kynä, päivä, kylä
%
% Feature keys are written with the dimensions in alphabetical order:
% "case=...;number=...".

noun_class("talo", back_o).
noun_class("auto", back_o).
noun_class("kello", back_o).
noun_class("kynä", front_ae).
noun_class("päivä", front_ae).
noun_class("kylä", front_ae).

% --- back_o: talo -----------------------------------------------------------
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=partitive;number=singular", @suffix(L, "a")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=inessive;number=singular", @suffix(L, "ssa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=elative;number=singular", @suffix(L, "sta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=illative;number=singular", @suffix(L, "on")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=adessive;number=singular", @suffix(L, "lla")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=ablative;number=singular", @suffix(L, "lta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=essive;number=singular", @suffix(L, "na")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=genitive;number=plural", @suffix(L, "jen")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=partitive;number=plural", @suffix(L, "ja")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=inessive;number=plural", @suffix(L, "issa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=elative;number=plural", @suffix(L, "ista")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=illative;number=plural", @suffix(L, "ihin")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=adessive;number=plural", @suffix(L, "illa")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=ablative;number=plural", @suffix(L, "ilta")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=allative;number=plural", @suffix(L, "ille")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=essive;number=plural", @suffix(L, "ina")) :- input_lemma(L), noun_class(L, back_o).
form(L, "case=translative;number=plural", @suffix(L, "iksi")) :- input_lemma(L), noun_class(L, back_o).

% --- front_ae: kynä ---------------------------------------------------------
form(L, "case=nominative;number=singular", L) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=genitive;number=singular", @suffix(L, "n")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=partitive;number=singular", @suffix(L, "ä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=inessive;number=singular", @suffix(L, "ssä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=elative;number=singular", @suffix(L, "stä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=illative;number=singular", @suffix(L, "än")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=adessive;number=singular", @suffix(L, "llä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=ablative;number=singular", @suffix(L, "ltä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=allative;number=singular", @suffix(L, "lle")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=essive;number=singular", @suffix(L, "nä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=translative;number=singular", @suffix(L, "ksi")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=nominative;number=plural", @suffix(L, "t")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=genitive;number=plural", @strip_suffix_add(L, 1, "ien")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=partitive;number=plural", @strip_suffix_add(L, 1, "iä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=inessive;number=plural", @strip_suffix_add(L, 1, "issä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=elative;number=plural", @strip_suffix_add(L, 1, "istä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=illative;number=plural", @strip_suffix_add(L, 1, "iin")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=adessive;number=plural", @strip_suffix_add(L, 1, "illä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=ablative;number=plural", @strip_suffix_add(L, 1, "iltä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=allative;number=plural", @strip_suffix_add(L, 1, "ille")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=essive;number=plural", @strip_suffix_add(L, 1, "inä")) :- input_lemma(L), noun_class(L, front_ae).
form(L, "case=translative;number=plural", @strip_suffix_add(L, 1, "iksi")) :- input_lemma(L), noun_class(L, front_ae).

% --- Exceptions -------------------------------------------------------------
% "vesi" (water): stem alternation vesi ~ vete- ~ vede- ~ vet-; every form is
% listed. It has no noun_class fact, so no class rule applies to it.
irregular("vesi").
form("vesi", "case=nominative;number=singular", "vesi").
form("vesi", "case=genitive;number=singular", "veden").
form("vesi", "case=partitive;number=singular", "vettä").
form("vesi", "case=inessive;number=singular", "vedessä").
form("vesi", "case=elative;number=singular", "vedestä").
form("vesi", "case=illative;number=singular", "veteen").
form("vesi", "case=adessive;number=singular", "vedellä").
form("vesi", "case=ablative;number=singular", "vedeltä").
form("vesi", "case=allative;number=singular", "vedelle").
form("vesi", "case=essive;number=singular", "vetenä").
form("vesi", "case=translative;number=singular", "vedeksi").
form("vesi", "case=nominative;number=plural", "vedet").
form("vesi", "case=genitive;number=plural", "vesien").
form("vesi", "case=partitive;number=plural", "vesiä").
form("vesi", "case=inessive;number=plural", "vesissä").
form("vesi", "case=elative;number=plural", "vesistä").
form("vesi", "case=illative;number=plural", "vesiin").
form("vesi", "case=adessive;number=plural", "vesillä").
form("vesi", "case=ablative;number=plural", "vesiltä").
form("vesi", "case=allative;number=plural", "vesille").
form("vesi", "case=essive;number=plural", "vesinä").
form("vesi", "case=translative;number=plural", "vesiksi").
