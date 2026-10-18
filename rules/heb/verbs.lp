% rules/heb/verbs.lp
% Modern Hebrew verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67768: Easing Into Modern Hebrew Grammar: A User-friendly Reference and Exercise Book (Vol. I) (n.d.), pages 60, 391, 396, 441, 460, 466, 481, 492, 494, 512, 521, 524, 536, 543, 552, 576, 577, 586, 591, 592
%   doc 67881: Modern Hebrew Structure (1978), pages 48, 49, 95, 96, 100, 162, 163
%   doc 67888: Predicate Formation in the Verbal System of Modern Hebrew (1987), pages 19, 20
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   hoof_al                      הוזמן — grammar: "hoof'al"
%   pe_yod_verbs                 לשבת — grammar: "pe-yod verbs"
%   poo_al                       צולם, קום — grammar: "poo'al"
%   perfect                      c.c.c — grammar: "Perfect"
%   pa_al                        דבר — grammar: "pa'al"
%   beenyan_heefeel              התייש — grammar: "beenyan heefeel"
%   heetpa_el                    התכסה — grammar: "Heetpa'el"
%   heetpa_el_2                  התלבש — grammar: "heetpa'el"
%   pa_al_2                      כתב — grammar: "pa'al"
%   pe_yod_verbs_2               להוריד — grammar: "pe-yod verbs"
%   regular_verbs                להתלבש — grammar: "regular verbs"
%   middle_gutturals             להתנהג — grammar: "middle gutturals"
%   final_gutturals              להתפתח — grammar: "final gutturals"
%   pa_al_3                      נכנס — grammar: "pa'al"
%   pa_al_4                      קנה — grammar: "Pa'al"
%   hif_il                       להבין — grammar: "Hif'il"
%   hof_al                       להובן — grammar: "Hof'al"
%   pe_yod_verbs_3               להורד — grammar: "pe-yod verbs"
%   pe_noon_efol                 נפל — grammar: "pe-noon ( ,efol)"
%   pa_al_5                      גע — grammar: "Pa'al"
%   pa_al_6                      כיר — grammar: "Pa'al"
%   pa_al_7                      נהג — grammar: "Pa'al"
%   pa_al_8                      נשם — grammar: "Pa'al"
%   pa_al_9                      פול — grammar: "Pa'al"
%   final_gutturals_2            להבטיח — grammar: "final gutturals"
%   initial_gutturals            להחליט — grammar: "initial gutturals"
%   middle_gutturals_2           להעדיף — grammar: "middle gutturals"
%   regular_verbs_2              להרגיש — grammar: "regular verbs"
%   pee_el                       שינה — grammar: "Pee'el"
%   hoofal                       הופנה — grammar: "Hoofal"
%   heef_eel                     הפנה — grammar: "Heef'eel"
%   poo_al_2                     כוסה — grammar: "Poo'al"
%   pe_yod_verbs_4               ליצור — grammar: "pe-yod verbs"
%   neefal                       נבנה — grammar: "Neefal"
%   pe_yod_verbs_5               לישון — grammar: "pe-yod verbs"
%   initial_gutturals_2          לאסוף — grammar: "initial gutturals"
%   initial_gutturals_3          לעמוד — grammar: "initial gutturals"
%   final_gutturals_3            לשמוע — grammar: "final gutturals"
%   initial_gutturals_4          לאכול — grammar: "initial gutturals"
%   class_type                   לכתוב
%   gamal_type                   gamal
%   defective_roots              s-q — grammar: ""DEFECTIVE" ROOTS"
%   hif_il_2                     ברא — grammar: "Hif'il"
%   hoofal_2                     חבא — grammar: "Hoofal"
%   poo_al_3                     כא — grammar: "Poo'al"
%   initial_gutturals_5          לחזור — grammar: "initial gutturals"
%   regular_verb_efal            ללמוד — grammar: "regular verb ( ,efal)"
%   regular_verbs_3              לסגור — grammar: "regular verbs"
%   middle_gutturals_3           לשאול — grammar: "middle gutturals"
%   pee_al                       מלא — grammar: "Pee'al"
%   nif_al                       מצא — grammar: "Nif'al"
%   heetpa_al                    פלא — grammar: "Heetpa'al"
%   pa_al_10                     קרא — grammar: "Pa'al"
%   pual_b_3_p_s                 gula — grammar: "pual, B-3 p s"
%   hitpael_b_4                  iStana — grammar: "hitpael, B-4"
%   hifil_b_5                    ifna, ikna — grammar: "hifil, B-5"
%   hitpael_b_4_2                itgala — grammar: "hitpael, B-4"
%   nifal_b_2                    nikna — grammar: "nifal, B-2"
%   hufal_b_5_p_s                ufna, ukna — grammar: "hufal, B-5 p s"
%   ayeen_vav_yod_verbs          בוא, שיר — grammar: "'ayeen-vav/yod verbs"
%   regular_verbs_4              לדבר — grammar: "regular verbs"
%   pe_yod_tsadee_verbs          להוצג — grammar: "pe-yod-tsadee verbs"
%   pe_yod_tsadee_verbs_2        להציג — grammar: "pe-yod-tsadee verbs"
%   c3rd_root_letter             לנסות, לקנות — grammar: "3rd root letter 'י"
%   class_type_2                 לקום
%   c2nd_root_letter_or          לתאר — grammar: "2nd root letter ד or 'י"
%   class_type_3                 מדבר
%   verbs_whose_first_root_letter_is פ״ל — grammar: "Verbs whose First Root Letter Is נ׳"
%   nifal_b_2_2                  nivna — grammar: "nifal, B-2"
%   pe_noon_efol_2               לנשום — grammar: "pe-noon ( ׳efol )"
%   verbs_with_a_middle_guttural לשאל — grammar: "verbs with a middle guttural"
%   c2nd_root_letter_or_2        לשים — grammar: "2nd root letter 'ו or 'י"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
