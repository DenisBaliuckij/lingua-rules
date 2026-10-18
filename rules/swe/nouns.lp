% rules/swe/nouns.lp
% Swedish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 96720: Swedish: An Elementary Grammar-Reader (1980), pages 21, 29, 30, 46, 58, 86, 87, 89, 90, 99, 330, 331
%   doc 388275: Swedish (2005), pages 13, 16, 17
%   doc 388276: Beginning Swedish (1939), pages 53, 54, 60, 67, 69, 84, 112, 114, 115, 226
%   doc 388278: Modern Swedish Grammar (1923), pages 54, 57, 71, 73, 75, 77, 78, 82, 99, 110, 127, 134, 136, 139, 141
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   iii                          park — grammar: "III"
%   doktor_type                  doktor, professor
%   exempel_type                 exempel
%   c3rd_declension              horn — grammar: "3rd Declension"
%   v                            hus — grammar: "V"
%   bagare_type                  bagare
%   fagel_type                   fågel
%   hustru_type                  hustru
%   i                            flicka — grammar: "I"
%   fonster_type                 fönster
%   first_declension             gata, skola — grammar: "first declension"
%   ii                           gosse — grammar: "II"
%   c3rd_declension_2            hand — grammar: "3rd Declension"
%   fourth_declension            hjärta, ansikte, knä — grammar: "fourth declension"
%   loan_words_ending_in_unstressed_el_er mobel — grammar: "Loan-words ending in unstressed -el, -er"
%   c3rd_declension_3            neger — grammar: "3rd Declension"
%   iv                           rike — grammar: "IV"
%   syster_type                  syster
%   c3rd_declension_4            bageri — grammar: "3rd Declension"
%   third_declension             familj, klass — grammar: "third declension"
%   c3rd_declension_5            museum — grammar: "3rd Declension"
%   c5th_declension              resande — grammar: "5th Declension"
%   c1st_declension              ros — grammar: "1st Declension"
%   c1st_declension_2            sUola — grammar: "1st Declension"
%   nouns_ending_in_a_vowel_form_their_plura Ido — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   nouns_ending_in_a_vowel_form_their_plura_2 Jco — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   non_neuter_nouns_of_foreign_origin_loan akademi — grammar: "Non-neuter nouns of foreign origin (loan-words) with the stress on the last syllable"
%   non_neuter_nouns_of_foreign_origin_loan_2 arme — grammar: "Non-neuter nouns of foreign origin (loan-words) with the stress on the last syllable"
%   loan_words_ending_in_arie_ie bibliotekarie — grammar: "Loan-words ending in -arie, -ie"
%   nouns_ending_in_a_vowel_form_their_plura_3 bonde — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   loan_words_ending_in_or      doctor — grammar: "Loan-words ending in -or"
%   loan_words_ending_in_unstressed_el_er_2 fabel — grammar: "Loan-words ending in unstressed -el, -er"
%   loan_words_ending_in_unstressed_el_er_3 fiber — grammar: "Loan-words ending in unstressed -el, -er"
%   nouns_ending_in_a_vowel_form_their_plura_4 fiende — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   fonster_type_2               fonster
%   nouns_ending_in_a_vowel_form_their_plura_5 frande — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   fruntimmer_type              fruntimmer
%   non_neuter_nouns_of_foreign_origin_loan_3 ide — grammar: "Non-neuter nouns of foreign origin (loan-words) with the stress on the last syllable"
%   inkomst_type                 inkomst
%   nouns_ending_in_a_vowel_form_their_plura_6 jungfru — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   kunskap_type                 kunskap
%   loan_words_ending_in_unstressed_el_er_4 mirakel — grammar: "Loan-words ending in unstressed -el, -er"
%   nouns_ending_in_a_vowel_form_their_plura_7 mo — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   loan_words_ending_in_unstressed_el_er_5 muskel — grammar: "Loan-words ending in unstressed -el, -er"
%   nouns_ending_in_at_slzap_nd_r_and_else månad — grammar: "Nouns ending in -at?, -slzap, -nd'r and -else"
%   nyhet_type                   nyhet
%   penning_type                 penning
%   c1st_declension_3            prins — grammar: "1st Declension"
%   c3rd_declension_6            protestant — grammar: "3rd Declension"
%   rad_type                     rad
%   segel_type                   segel
%   c1st_declension_4            skomakare — grammar: "1st Declension"
%   nouns_ending_in_a_vowel_form_their_plura_8 stadsbo — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   nouns_ending_in_a_vowel_form_their_plura_9 td — grammar: "Nouns ending in a vowel form their plural by adding -r instead of -er"
%   tecken_type                  tecken
%   underrdttelse_type           underrdttelse
%   vapen_type                   vapen
%   c2nd_declension              äpple — grammar: "2nd Declension"
% Irregular (listed in data/nouns.exceptions.tsv): afton, and, bok, bokstav, brand, broder, djdvul, dotter, fader, fot, gas, get ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
