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
% Data (rules/fi/data/): verbs.lexicon.tsv (verb_class per lemma),
% verbs.exceptions.tsv (irregular verbs).
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
