% rules/fi/verbs.lp
% Finnish verbs (features: verb_form, person, number): infinitive, present,
% past (imperfect), imperative (2nd person singular and plural).
% Classes (verb_class/2), named after the traditional verb types:
%   t1_u / t1_o / t1_y  puhua -> puhun ... puhuu; puhuin; puhu, puhukaa
%   t1_i_back/_front    etsiä -> etsin ... etsii; etsin (past = present stem)
%   t1_aa_i             ostaa -> ostan ... ostaa; ostin
%   t1_aa_oi            maksaa -> maksan ... maksaa; maksoin
%   t3_back / t3_front  tulla -> tulen ... tulee; tulin; tule, tulkaa
%   t4_back             haluta -> haluan ... haluaa; halusin; halua, halutkaa
%   t5_back / t5_front  tarvita -> tarvitsen ... tarvitsee; tarvitsin; tarvitse, tarvitkaa
% "_back"/"_front" follow vowel harmony. None of these classes has consonant
% gradation; type 2 verbs (syödä, juoda, tehdä ...) and verbs with gradation
% (ottaa -> otan, lukea -> luen) are listed as irregular.
%
% Not covered: negative forms (en puhu), passive, conditional and potential
% moods, perfect tenses, participles and infinitives other than the first.

form(L, "verb_form=infinitive", L) :- input_lemma(L).

% --- t1_u
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "u")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "it")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "i")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "imme")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "itte")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "ivat")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_u).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t1_u).

% --- t1_o
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "o")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "it")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "i")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "imme")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "itte")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "ivat")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_o).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t1_o).

% --- t1_y
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "y")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vät")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "in")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "it")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "i")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "imme")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "itte")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "ivät")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_y).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kää")) :- input_lemma(L), verb_class(L, t1_y).

% --- t1_i_back
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "i")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_i_back).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t1_i_back).

% --- t1_i_front
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "i")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vät")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "vät")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_i_front).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kää")) :- input_lemma(L), verb_class(L, t1_i_front).

% --- t1_aa_i
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "a")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 2, "in")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 2, "it")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 2, "i")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 2, "imme")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 2, "itte")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 2, "ivat")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_aa_i).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t1_aa_i).

% --- t1_aa_oi
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "n")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "t")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "a")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "mme")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "tte")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "vat")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 2, "oin")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 2, "oit")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 2, "oi")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 2, "oimme")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 2, "oitte")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 2, "oivat")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "")) :- input_lemma(L), verb_class(L, t1_aa_oi).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t1_aa_oi).

% --- t3_back
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 2, "en")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 2, "et")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 2, "ee")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 2, "emme")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 2, "ette")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 2, "evat")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 2, "in")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 2, "it")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 2, "i")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 2, "imme")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 2, "itte")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 2, "ivat")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 2, "e")) :- input_lemma(L), verb_class(L, t3_back).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 2, "kaa")) :- input_lemma(L), verb_class(L, t3_back).

% --- t3_front
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 2, "en")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 2, "et")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 2, "ee")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 2, "emme")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 2, "ette")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 2, "evät")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 2, "in")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 2, "it")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 2, "i")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 2, "imme")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 2, "itte")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 2, "ivät")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 2, "e")) :- input_lemma(L), verb_class(L, t3_front).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 2, "kää")) :- input_lemma(L), verb_class(L, t3_front).

% --- t4_back
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 2, "an")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 2, "at")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 2, "aa")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 2, "amme")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 2, "atte")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 2, "avat")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 2, "sin")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 2, "sit")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 2, "si")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 2, "simme")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 2, "sitte")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 2, "sivat")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 2, "a")) :- input_lemma(L), verb_class(L, t4_back).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t4_back).

% --- t5_back
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "sen")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "set")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "see")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "semme")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "sette")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "sevat")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "sin")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "sit")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "si")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "simme")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "sitte")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "sivat")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "se")) :- input_lemma(L), verb_class(L, t5_back).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kaa")) :- input_lemma(L), verb_class(L, t5_back).

% --- t5_front
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 1, "sen")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 1, "set")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 1, "see")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 1, "semme")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 1, "sette")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 1, "sevät")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;person=first;verb_form=past", @strip_suffix_add(L, 1, "sin")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;person=second;verb_form=past", @strip_suffix_add(L, 1, "sit")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;person=third;verb_form=past", @strip_suffix_add(L, 1, "si")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=first;verb_form=past", @strip_suffix_add(L, 1, "simme")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=second;verb_form=past", @strip_suffix_add(L, 1, "sitte")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;person=third;verb_form=past", @strip_suffix_add(L, 1, "sivät")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 1, "se")) :- input_lemma(L), verb_class(L, t5_front).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 1, "kää")) :- input_lemma(L), verb_class(L, t5_front).

% --- class membership
verb_class("puhua", t1_u). verb_class("asua", t1_u). verb_class("istua", t1_u).
verb_class("sanoa", t1_o).
verb_class("kysyä", t1_y). verb_class("pysyä", t1_y).
verb_class("sallia", t1_i_back).
verb_class("etsiä", t1_i_front).
verb_class("ostaa", t1_aa_i). verb_class("muistaa", t1_aa_i).
verb_class("maksaa", t1_aa_oi). verb_class("laulaa", t1_aa_oi).
verb_class("tulla", t3_back). verb_class("opiskella", t3_back). verb_class("purra", t3_back).
verb_class("mennä", t3_front). verb_class("kävellä", t3_front).
verb_class("haluta", t4_back). verb_class("siivota", t4_back).
verb_class("tarvita", t5_back). verb_class("valita", t5_back).
verb_class("häiritä", t5_front). verb_class("merkitä", t5_front).

% --- irregular verbs (all forms listed)
irregular("olla").
form("olla", "number=singular;person=first;verb_form=present", "olen"). form("olla", "number=singular;person=second;verb_form=present", "olet"). form("olla", "number=singular;person=third;verb_form=present", "on"). form("olla", "number=plural;person=first;verb_form=present", "olemme"). form("olla", "number=plural;person=second;verb_form=present", "olette"). form("olla", "number=plural;person=third;verb_form=present", "ovat").
form("olla", "number=singular;person=first;verb_form=past", "olin"). form("olla", "number=singular;person=second;verb_form=past", "olit"). form("olla", "number=singular;person=third;verb_form=past", "oli"). form("olla", "number=plural;person=first;verb_form=past", "olimme"). form("olla", "number=plural;person=second;verb_form=past", "olitte"). form("olla", "number=plural;person=third;verb_form=past", "olivat").
form("olla", "number=singular;verb_form=imperative", "ole"). form("olla", "number=plural;verb_form=imperative", "olkaa").
irregular("syödä").
form("syödä", "number=singular;person=first;verb_form=present", "syön"). form("syödä", "number=singular;person=second;verb_form=present", "syöt"). form("syödä", "number=singular;person=third;verb_form=present", "syö"). form("syödä", "number=plural;person=first;verb_form=present", "syömme"). form("syödä", "number=plural;person=second;verb_form=present", "syötte"). form("syödä", "number=plural;person=third;verb_form=present", "syövät").
form("syödä", "number=singular;person=first;verb_form=past", "söin"). form("syödä", "number=singular;person=second;verb_form=past", "söit"). form("syödä", "number=singular;person=third;verb_form=past", "söi"). form("syödä", "number=plural;person=first;verb_form=past", "söimme"). form("syödä", "number=plural;person=second;verb_form=past", "söitte"). form("syödä", "number=plural;person=third;verb_form=past", "söivät").
form("syödä", "number=singular;verb_form=imperative", "syö"). form("syödä", "number=plural;verb_form=imperative", "syökää").
irregular("juoda").
form("juoda", "number=singular;person=first;verb_form=present", "juon"). form("juoda", "number=singular;person=second;verb_form=present", "juot"). form("juoda", "number=singular;person=third;verb_form=present", "juo"). form("juoda", "number=plural;person=first;verb_form=present", "juomme"). form("juoda", "number=plural;person=second;verb_form=present", "juotte"). form("juoda", "number=plural;person=third;verb_form=present", "juovat").
form("juoda", "number=singular;person=first;verb_form=past", "join"). form("juoda", "number=singular;person=second;verb_form=past", "joit"). form("juoda", "number=singular;person=third;verb_form=past", "joi"). form("juoda", "number=plural;person=first;verb_form=past", "joimme"). form("juoda", "number=plural;person=second;verb_form=past", "joitte"). form("juoda", "number=plural;person=third;verb_form=past", "joivat").
form("juoda", "number=singular;verb_form=imperative", "juo"). form("juoda", "number=plural;verb_form=imperative", "juokaa").
irregular("saada").
form("saada", "number=singular;person=first;verb_form=present", "saan"). form("saada", "number=singular;person=second;verb_form=present", "saat"). form("saada", "number=singular;person=third;verb_form=present", "saa"). form("saada", "number=plural;person=first;verb_form=present", "saamme"). form("saada", "number=plural;person=second;verb_form=present", "saatte"). form("saada", "number=plural;person=third;verb_form=present", "saavat").
form("saada", "number=singular;person=first;verb_form=past", "sain"). form("saada", "number=singular;person=second;verb_form=past", "sait"). form("saada", "number=singular;person=third;verb_form=past", "sai"). form("saada", "number=plural;person=first;verb_form=past", "saimme"). form("saada", "number=plural;person=second;verb_form=past", "saitte"). form("saada", "number=plural;person=third;verb_form=past", "saivat").
form("saada", "number=singular;verb_form=imperative", "saa"). form("saada", "number=plural;verb_form=imperative", "saakaa").
irregular("voida").
form("voida", "number=singular;person=first;verb_form=present", "voin"). form("voida", "number=singular;person=second;verb_form=present", "voit"). form("voida", "number=singular;person=third;verb_form=present", "voi"). form("voida", "number=plural;person=first;verb_form=present", "voimme"). form("voida", "number=plural;person=second;verb_form=present", "voitte"). form("voida", "number=plural;person=third;verb_form=present", "voivat").
form("voida", "number=singular;person=first;verb_form=past", "voin"). form("voida", "number=singular;person=second;verb_form=past", "voit"). form("voida", "number=singular;person=third;verb_form=past", "voi"). form("voida", "number=plural;person=first;verb_form=past", "voimme"). form("voida", "number=plural;person=second;verb_form=past", "voitte"). form("voida", "number=plural;person=third;verb_form=past", "voivat").
irregular("viedä").
form("viedä", "number=singular;person=first;verb_form=present", "vien"). form("viedä", "number=singular;person=second;verb_form=present", "viet"). form("viedä", "number=singular;person=third;verb_form=present", "vie"). form("viedä", "number=plural;person=first;verb_form=present", "viemme"). form("viedä", "number=plural;person=second;verb_form=present", "viette"). form("viedä", "number=plural;person=third;verb_form=present", "vievät").
form("viedä", "number=singular;person=first;verb_form=past", "vein"). form("viedä", "number=singular;person=second;verb_form=past", "veit"). form("viedä", "number=singular;person=third;verb_form=past", "vei"). form("viedä", "number=plural;person=first;verb_form=past", "veimme"). form("viedä", "number=plural;person=second;verb_form=past", "veitte"). form("viedä", "number=plural;person=third;verb_form=past", "veivät").
form("viedä", "number=singular;verb_form=imperative", "vie"). form("viedä", "number=plural;verb_form=imperative", "viekää").
irregular("tehdä").
form("tehdä", "number=singular;person=first;verb_form=present", "teen"). form("tehdä", "number=singular;person=second;verb_form=present", "teet"). form("tehdä", "number=singular;person=third;verb_form=present", "tekee"). form("tehdä", "number=plural;person=first;verb_form=present", "teemme"). form("tehdä", "number=plural;person=second;verb_form=present", "teette"). form("tehdä", "number=plural;person=third;verb_form=present", "tekevät").
form("tehdä", "number=singular;person=first;verb_form=past", "tein"). form("tehdä", "number=singular;person=second;verb_form=past", "teit"). form("tehdä", "number=singular;person=third;verb_form=past", "teki"). form("tehdä", "number=plural;person=first;verb_form=past", "teimme"). form("tehdä", "number=plural;person=second;verb_form=past", "teitte"). form("tehdä", "number=plural;person=third;verb_form=past", "tekivät").
form("tehdä", "number=singular;verb_form=imperative", "tee"). form("tehdä", "number=plural;verb_form=imperative", "tehkää").
irregular("nähdä").
form("nähdä", "number=singular;person=first;verb_form=present", "näen"). form("nähdä", "number=singular;person=second;verb_form=present", "näet"). form("nähdä", "number=singular;person=third;verb_form=present", "näkee"). form("nähdä", "number=plural;person=first;verb_form=present", "näemme"). form("nähdä", "number=plural;person=second;verb_form=present", "näette"). form("nähdä", "number=plural;person=third;verb_form=present", "näkevät").
form("nähdä", "number=singular;person=first;verb_form=past", "näin"). form("nähdä", "number=singular;person=second;verb_form=past", "näit"). form("nähdä", "number=singular;person=third;verb_form=past", "näki"). form("nähdä", "number=plural;person=first;verb_form=past", "näimme"). form("nähdä", "number=plural;person=second;verb_form=past", "näitte"). form("nähdä", "number=plural;person=third;verb_form=past", "näkivät").
form("nähdä", "number=singular;verb_form=imperative", "näe"). form("nähdä", "number=plural;verb_form=imperative", "nähkää").
irregular("tietää").
form("tietää", "number=singular;person=first;verb_form=present", "tiedän"). form("tietää", "number=singular;person=second;verb_form=present", "tiedät"). form("tietää", "number=singular;person=third;verb_form=present", "tietää"). form("tietää", "number=plural;person=first;verb_form=present", "tiedämme"). form("tietää", "number=plural;person=second;verb_form=present", "tiedätte"). form("tietää", "number=plural;person=third;verb_form=present", "tietävät").
form("tietää", "number=singular;person=first;verb_form=past", "tiesin"). form("tietää", "number=singular;person=second;verb_form=past", "tiesit"). form("tietää", "number=singular;person=third;verb_form=past", "tiesi"). form("tietää", "number=plural;person=first;verb_form=past", "tiesimme"). form("tietää", "number=plural;person=second;verb_form=past", "tiesitte"). form("tietää", "number=plural;person=third;verb_form=past", "tiesivät").
form("tietää", "number=singular;verb_form=imperative", "tiedä"). form("tietää", "number=plural;verb_form=imperative", "tietäkää").
irregular("ottaa").
form("ottaa", "number=singular;person=first;verb_form=present", "otan"). form("ottaa", "number=singular;person=second;verb_form=present", "otat"). form("ottaa", "number=singular;person=third;verb_form=present", "ottaa"). form("ottaa", "number=plural;person=first;verb_form=present", "otamme"). form("ottaa", "number=plural;person=second;verb_form=present", "otatte"). form("ottaa", "number=plural;person=third;verb_form=present", "ottavat").
form("ottaa", "number=singular;person=first;verb_form=past", "otin"). form("ottaa", "number=singular;person=second;verb_form=past", "otit"). form("ottaa", "number=singular;person=third;verb_form=past", "otti"). form("ottaa", "number=plural;person=first;verb_form=past", "otimme"). form("ottaa", "number=plural;person=second;verb_form=past", "otitte"). form("ottaa", "number=plural;person=third;verb_form=past", "ottivat").
form("ottaa", "number=singular;verb_form=imperative", "ota"). form("ottaa", "number=plural;verb_form=imperative", "ottakaa").
irregular("antaa").
form("antaa", "number=singular;person=first;verb_form=present", "annan"). form("antaa", "number=singular;person=second;verb_form=present", "annat"). form("antaa", "number=singular;person=third;verb_form=present", "antaa"). form("antaa", "number=plural;person=first;verb_form=present", "annamme"). form("antaa", "number=plural;person=second;verb_form=present", "annatte"). form("antaa", "number=plural;person=third;verb_form=present", "antavat").
form("antaa", "number=singular;person=first;verb_form=past", "annoin"). form("antaa", "number=singular;person=second;verb_form=past", "annoit"). form("antaa", "number=singular;person=third;verb_form=past", "antoi"). form("antaa", "number=plural;person=first;verb_form=past", "annoimme"). form("antaa", "number=plural;person=second;verb_form=past", "annoitte"). form("antaa", "number=plural;person=third;verb_form=past", "antoivat").
form("antaa", "number=singular;verb_form=imperative", "anna"). form("antaa", "number=plural;verb_form=imperative", "antakaa").
irregular("lukea").
form("lukea", "number=singular;person=first;verb_form=present", "luen"). form("lukea", "number=singular;person=second;verb_form=present", "luet"). form("lukea", "number=singular;person=third;verb_form=present", "lukee"). form("lukea", "number=plural;person=first;verb_form=present", "luemme"). form("lukea", "number=plural;person=second;verb_form=present", "luette"). form("lukea", "number=plural;person=third;verb_form=present", "lukevat").
form("lukea", "number=singular;person=first;verb_form=past", "luin"). form("lukea", "number=singular;person=second;verb_form=past", "luit"). form("lukea", "number=singular;person=third;verb_form=past", "luki"). form("lukea", "number=plural;person=first;verb_form=past", "luimme"). form("lukea", "number=plural;person=second;verb_form=past", "luitte"). form("lukea", "number=plural;person=third;verb_form=past", "lukivat").
form("lukea", "number=singular;verb_form=imperative", "lue"). form("lukea", "number=plural;verb_form=imperative", "lukekaa").
irregular("kirjoittaa").
form("kirjoittaa", "number=singular;person=first;verb_form=present", "kirjoitan"). form("kirjoittaa", "number=singular;person=second;verb_form=present", "kirjoitat"). form("kirjoittaa", "number=singular;person=third;verb_form=present", "kirjoittaa"). form("kirjoittaa", "number=plural;person=first;verb_form=present", "kirjoitamme"). form("kirjoittaa", "number=plural;person=second;verb_form=present", "kirjoitatte"). form("kirjoittaa", "number=plural;person=third;verb_form=present", "kirjoittavat").
form("kirjoittaa", "number=singular;person=first;verb_form=past", "kirjoitin"). form("kirjoittaa", "number=singular;person=second;verb_form=past", "kirjoitit"). form("kirjoittaa", "number=singular;person=third;verb_form=past", "kirjoitti"). form("kirjoittaa", "number=plural;person=first;verb_form=past", "kirjoitimme"). form("kirjoittaa", "number=plural;person=second;verb_form=past", "kirjoititte"). form("kirjoittaa", "number=plural;person=third;verb_form=past", "kirjoittivat").
form("kirjoittaa", "number=singular;verb_form=imperative", "kirjoita"). form("kirjoittaa", "number=plural;verb_form=imperative", "kirjoittakaa").
irregular("ymmärtää").
form("ymmärtää", "number=singular;person=first;verb_form=present", "ymmärrän"). form("ymmärtää", "number=singular;person=second;verb_form=present", "ymmärrät"). form("ymmärtää", "number=singular;person=third;verb_form=present", "ymmärtää"). form("ymmärtää", "number=plural;person=first;verb_form=present", "ymmärrämme"). form("ymmärtää", "number=plural;person=second;verb_form=present", "ymmärrätte"). form("ymmärtää", "number=plural;person=third;verb_form=present", "ymmärtävät").
form("ymmärtää", "number=singular;person=first;verb_form=past", "ymmärsin"). form("ymmärtää", "number=singular;person=second;verb_form=past", "ymmärsit"). form("ymmärtää", "number=singular;person=third;verb_form=past", "ymmärsi"). form("ymmärtää", "number=plural;person=first;verb_form=past", "ymmärsimme"). form("ymmärtää", "number=plural;person=second;verb_form=past", "ymmärsitte"). form("ymmärtää", "number=plural;person=third;verb_form=past", "ymmärsivät").
form("ymmärtää", "number=singular;verb_form=imperative", "ymmärrä"). form("ymmärtää", "number=plural;verb_form=imperative", "ymmärtäkää").
irregular("nukkua").
form("nukkua", "number=singular;person=first;verb_form=present", "nukun"). form("nukkua", "number=singular;person=second;verb_form=present", "nukut"). form("nukkua", "number=singular;person=third;verb_form=present", "nukkuu"). form("nukkua", "number=plural;person=first;verb_form=present", "nukumme"). form("nukkua", "number=plural;person=second;verb_form=present", "nukutte"). form("nukkua", "number=plural;person=third;verb_form=present", "nukkuvat").
form("nukkua", "number=singular;person=first;verb_form=past", "nukuin"). form("nukkua", "number=singular;person=second;verb_form=past", "nukuit"). form("nukkua", "number=singular;person=third;verb_form=past", "nukkui"). form("nukkua", "number=plural;person=first;verb_form=past", "nukuimme"). form("nukkua", "number=plural;person=second;verb_form=past", "nukuitte"). form("nukkua", "number=plural;person=third;verb_form=past", "nukkuivat").
form("nukkua", "number=singular;verb_form=imperative", "nuku"). form("nukkua", "number=plural;verb_form=imperative", "nukkukaa").
