% rules/dan/nouns.lp
% Danish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389832: Danish (2005), pages 13, 14, 16, 17
%   doc 927903: Danish: An Essential Grammar (n.d.), pages 40, 41, 61, 72, 77, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 101, 110, 115, 116
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   fod_type                     fod
%   class_3_plural_in_0_indefinite_ene_defin forsøg, mus, år — grammar: "Class 3, plural in 0 (indefinite), -ene (definite)"
%   mand_type                    mand
%   class_2_plural_in_e_indefinite_ene_defin dag — grammar: "Class 2, plural in -e (indefinite), -ene (definite)"
%   class_1_plural_in_er_indefinite_erne_def måned, ske — grammar: "Class 1, plural in -er (indefinite), -erne (definite)"
%   class_1_plural_in_er_indefinite_erne_def_2 uge — grammar: "Class 1, plural in -er (indefinite), -erne (definite)"
%   plurals_of_nouns_in_el_en_er_en_sstersst aften — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_with_a_vowel_change_en_tandtnder barn — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_with_a_vowel_change_en_tandtnder_2 bog — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_with_a_vowel_change_en_tandtnder_3 bonde — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_with_a_vowel_change_en_tandtnder_4 bror — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   nouns_doubling_the_final_consonant bus — grammar: "NOUNS DOUBLING THE FINAL CONSONANT"
%   nouns_doubling_the_final_consonant_2 butik — grammar: "NOUNS DOUBLING THE FINAL CONSONANT"
%   zero_plural_en_skosko_et_arar bær — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   zero_plural_en_skosko_et_arar_2 dyr — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   nouns_ending_in_dom_n_ing    ejendom — grammar: "Nouns ending in -dom, -(n)ing"
%   plurals_of_nouns_in_el_en_er_en_sstersst_2 eksempel — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_with_a_vowel_change_en_tandtnder_5 far — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   zero_plural_en_skosko_et_arar_3 fejl — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   zero_plural_en_skosko_et_arar_4 forhold — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   plurals_with_a_vowel_change_en_tandtnder_6 gas — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   zero_plural_en_skosko_et_arar_5 glas — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   nouns_doubling_the_final_consonant_3 hat — grammar: "NOUNS DOUBLING THE FINAL CONSONANT"
%   nouns_doubling_the_final_consonant_4 hotel — grammar: "NOUNS DOUBLING THE FINAL CONSONANT"
%   plurals_with_a_vowel_change_en_tandtnder_7 hovedstad — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_with_a_vowel_change_en_tandtnder_8 hånd — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_of_nouns_in_el_en_er_en_sstersst_3 kartoffel — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_with_a_vowel_change_en_tandtnder_9 ko — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   zero_plural_en_skosko_et_arar_6 kort — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   plurals_with_a_vowel_change_en_tandtnder_10 kraft — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_of_nouns_in_el_en_er_en_sstersst_4 køkken — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_of_nouns_in_el_en_er_en_sstersst_5 kœlder — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_with_a_vowel_change_en_tandtnder_11 mor — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_with_a_vowel_change_en_tandtnder_12 nat — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   plurals_of_nouns_in_el_en_er_en_sstersst_6 nummer — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   plurals_of_nouns_in_el_en_er_en_sstersst_7 register — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   zero_plural_en_skosko_et_arar_7 rejsende — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   zero_plural_en_skosko_et_arar_8 sko — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   nouns_ending_in_dom_n_ing_2  slægtning — grammar: "Nouns ending in -dom, -(n)ing"
%   zero_plural_en_skosko_et_arar_9 sprog — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   zero_plural_en_skosko_et_arar_10 sten — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   zero_plural_en_skosko_et_arar_11 studerende — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   nouns_ending_in_dom_n_ing_3  sygdom — grammar: "Nouns ending in -dom, -(n)ing"
%   plurals_of_nouns_in_el_en_er_en_sstersst_8 søster — grammar: "PLURALS OF NOUNS IN -EL, -EN, -ER (EN SØSTER—SØSTRE)"
%   zero_plural_en_skosko_et_arar_12 tal — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   plurals_with_a_vowel_change_en_tandtnder_13 tand — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   zero_plural_en_skosko_et_arar_13 ting — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
%   plurals_with_a_vowel_change_en_tandtnder_14 tå — grammar: "PLURALS WITH A VOWEL CHANGE (EN TAND—TÆNDER)"
%   nouns_ending_in_dom_n_ing_4  udlænding — grammar: "Nouns ending in -dom, -(n)ing"
%   nouns_doubling_the_final_consonant_5 ven — grammar: "NOUNS DOUBLING THE FINAL CONSONANT"
%   zero_plural_en_skosko_et_arar_14 æg — grammar: "ZERO-PLURAL (EN SKO—SKO; ET ÅR—ÅR)"
% Irregular (listed in data/nouns.exceptions.tsv): Studium, konto, øje
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
