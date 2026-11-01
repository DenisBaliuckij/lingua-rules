% rules/sin/verbs.lp
% Sinhala verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104527: A Comprehensive Grammar of the Sinhalese Language (1972), pages 114, 115, 116, 117, 140, 147, 149, 154, 194, 197, 310, 312, 317, 604, 607, 608, 609, 610, 611, 613, 615, 616, 621, 631
%   doc 388197: Sinhala (2014), pages 62, 88, 92, 93, 94, 96, 97, 302
%   doc 896604: Sinhala: Basic Course. Module 2: General Conversation. (1979), pages 139
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   root_as_to_go                as — grammar: "Root as, ' to go '"
%   causal_form                  දක්වනවා — grammar: "Causal Form"
%   class_type                   වෙන්න
%   class_2                      adi — grammar: "Class 2"
%   kapanawa_type                kapanawa
%   kapp_type                    kapp
%   second_conjugation           දෙවනවා, ඇඳනවා, එලනවා, එලලනවා ... — grammar: "second conjugation"
%   class_1                      kapa — grammar: "Class 1"
%   krepenawa_type               krepenawa
%   roots_of_three_syllables_vowels_a_cod_or ඉපදෙනවා — grammar: "Roots of three syllables, vowels (a) cod or (b) e o & ; p . p. ( a) e o go or (b ) @ po ;, past 8 8 Cab org @ උදා ; v. 1. ඉ ඉ ඊම."
%   roots_with_an_immutable_vowel_7_or_9_in ඉරණවා — grammar: "Roots with an immutable vowel - 7 or 9-in the first syllable"
%   fourth_conjugation_ii_a_and_class_contin එල්ලෙනවා, ගෙතෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_2         ඒදනවා, හිතනවා — grammar: "SECOND CONJUGATION"
%   iii_class_a_vowels           කැලඹෙනවා — grammar: "III . ඇ class. A. Vowels ඇ අ එ"
%   iii_class_a_vowels_2         කැලැත්තනවා — grammar: "III . ඇ class. A. Vowels ඇ අ එ"
%   iii_class_a_vowels_3         ගැරහෙනවා — grammar: "III . ඇ class. A. Vowels ඇ අ එ"
%   iii_class_a_vowels_4         ගැලපෙනවා — grammar: "III . ඇ class. A. Vowels ඇ අ එ"
%   second_conjugation_3         ගෙනවා — grammar: "SECOND CONJUGATION"
%   fourth_conjugation_ii_a_and_class_contin_2 තෙමෙණෙවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fourth_conjugation_ii_a_and_class_contin_3 පෙනෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fourth_conjugation_ii_a_and_class_contin_4 පෙරණවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fourth_conjugation_ii_a_and_class_contin_5 පෙරළනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fourth_conjugation_ii_a_and_class_contin_6 බෙදෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_4         විමසනවා — grammar: "SECOND CONJUGATION"
%   fourth_conjugation_ii_a_and_class_contin_7 වෙලෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_5         හිනවා — grammar: "SECOND CONJUGATION"
%   class_1_2                    bala — grammar: "Class 1"
%   balarzawa_type               balarzawa
%   fourth_conjugation_ii_a_and_class_contin_8 ecordo — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   kaparzawa_type               kaparzawa
%   kreppuwa_type                kreppuwa
%   krepua_type                  krepua
%   krepuna_type                 krepuna
%   fourth_conjugation_ii_a_and_class_contin_9 ove — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   iii_class_a_vowels_5         ඇඹරෙෂ්ණවා — grammar: "III . ඇ class. A. Vowels ඇ අ එ"
%   fourth_conjugation_ii_a_and_class_contin_10 එරණවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_6         කඩනවා — grammar: "second conjugation"
%   second_conjugation_7         කපනවා — grammar: "second conjugation"
%   second_conjugation_8         කරකවනවා — grammar: "second conjugation"
%   fourth_conjugation_ii_a_and_class_contin_11 කරණවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_9         කවනවා — grammar: "second conjugation"
%   second_conjugation_10        කසනවා — grammar: "second conjugation"
%   third_conjugation            කහිනවා — grammar: "Third Conjugation"
%   fifth_conjugation_second_class_verbs_wit කිඳවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_2 කියවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   second_conjugation_11        කොණුස්සනවා — grammar: "second conjugation"
%   second_conjugation_12        ගරණවා — grammar: "second conjugation"
%   second_conjugation_13        ගලනවා — grammar: "second conjugation"
%   second_conjugation_14        ගල්වනවා — grammar: "second conjugation"
%   second_conjugation_15        ගවනවා — grammar: "SECOND CONJUGATION"
%   second_conjugation_16        ගසනවා — grammar: "second conjugation"
%   second_conjugation_17        ගහනවා — grammar: "second conjugation"
%   fifth_conjugation_second_class_verbs_wit_3 ගහවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. B. Causatives from roots with vowels ."
%   roots_of_three_syllables_vowels_a_cod_or_2 ගුගුරණවා — grammar: "Roots of three syllables, vowels (a) cod or (b) e o & ; p . p. ( a) e o go or (b ) @ po ;, past 8 8 Cab org @ උදා ; v. 1. ඉ ඉ ඊම."
%   second_conjugation_18        තකහවා — grammar: "second conjugation"
%   second_conjugation_19        තබනවා — grammar: "second conjugation"
%   second_conjugation_20        තහනවා — grammar: "second conjugation"
%   second_conjugation_21        තළනවා — grammar: "second conjugation"
%   second_conjugation_22        දකනවා — grammar: "second conjugation"
%   fifth_conjugation_second_class_verbs_wit_4 දිරවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   second_conjugation_23        දෙදරණවා — grammar: "SECOND CONJUGATION"
%   fifth_conjugation_second_class_verbs_wit_5 නිමවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_6 නියවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_7 නෙරපවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. B. Causatives from roots with vowels ."
%   fifth_conjugation_second_class_verbs_wit_8 පිනවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_9 පියවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_10 පිහිටුවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   roots_of_three_syllables_vowels_a_cod_or_3 පුලුස්සනවා — grammar: "Roots of three syllables, vowels (a) cod or (b) e o & ; p . p. ( a) e o go or (b ) @ po ;, past 8 8 Cab org @ උදා ; v. 1. ඉ ඉ ඊම."
%   fifth_conjugation_second_class_verbs_wit_11 පෙරවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. B. Causatives from roots with vowels ."
%   fourth_conjugation_ii_a_and_class_contin_12 පෙළනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_24        මතුරණවා — grammar: "SECOND CONJUGATION"
%   roots_of_two_syllables_vowels_e_or_e9_p මුදවා — grammar: "Roots of two syllables, vowels E (or E9); P. P o (en) ආ —in some cases උ අ ; past 9 ( F ) උවා ; v. 1. ඉ ( 5 ) ඊම."
%   fourth_conjugation_ii_a_and_class_contin_13 යෙදෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fifth_conjugation_second_class_verbs_wit_12 ලියලවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_13 ලියවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   second_conjugation_25        වගුරණවා — grammar: "SECOND CONJUGATION"
%   second_conjugation_26        වපුරණවා — grammar: "SECOND CONJUGATION"
%   second_conjugation_27        වළකනවා — grammar: "second conjugation"
%   fifth_conjugation_second_class_verbs_wit_14 වියලවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_15 විසුරුවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
%   fifth_conjugation_second_class_verbs_wit_16 වේලවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. B. Causatives from roots with vowels ."
%   fourth_conjugation_ii_a_and_class_contin_14 වේලුනාා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   fourth_conjugation_ii_a_and_class_contin_15 වේලෙනවා — grammar: "FOURTH CONJUGATION. II . A and class ( continued .)"
%   second_conjugation_28        සිතනවා — grammar: "SECOND CONJUGATION"
%   fifth_conjugation_second_class_verbs_wit_17 සිතවනවා — grammar: "Fifth Conjugation . Second Class . Verbs with immutable vowels in the first syllable, according to the Second Conjugation, II. A. Causatives from roots with vowels 3 4."
% Irregular (listed in data/verbs.exceptions.tsv): උගන්වනවා, උපදිනවා
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
