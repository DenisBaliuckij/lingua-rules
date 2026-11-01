% rules/txb/verbs.lp
% Tocharian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28912: Tocharian B: A Grammar of Syntax and Word-Formation (2015), pages 73, 146, 152, 153, 156, 159, 160, 192, 193, 196, 198, 201, 202, 203, 204, 205, 207, 216, 217
%   doc 388765: The Tocharian Verbal System (2015), pages 216, 240, 246, 250, 278, 312, 357, 380, 387, 407, 443, 451, 493, 496
%   doc 388766: Introduction to Tocharian (2012), pages 26, 29
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   klyausa_subtype              klyaus — grammar: "klyâusâ-subtype"
%   kalpa_subtype_fixed_short_vowel kälp — grammar: "kälpä-subtype (fixed short vowel)"
%   type_b_accent_preterit       läk — grammar: "Type B accent preterit"
%   s_preterit                   nek — grammar: "s-preterit"
%   p_a_subtype_with_fixed_long_vowel pik — grammar: "p^/Â-subtype (with fixed long vowel)"
%   class_i_subjunctive          yämä — grammar: "Class I subjunctive"
%   class_iii_preterit           pärk — grammar: "Class III preterit"
%   sigmatic_preterit_a          täm — grammar: "sigmatic preterit (a)"
%   class_ii_preterit            tärk — grammar: "Class II preterit"
%   wzh_a_subtype_the_non_causative_members yarn — grammar: "wzH^ä-subtype [= the non-causative members of Krause’s Class IV]"
%   class_iii_preterit_2         näk — grammar: "Class III preterit"
%   thematic_class_ii_present    ai — grammar: "thematic Class II present"
%   class_x                      kum — grammar: "Class X"
%   class_x_2                    yäm — grammar: "Class X"
%   j_preterits_with_root_initial_palataliza cäukä — grammar: "J-Preterits with Root-Initial Palatalization [Krause’s Class II]"
%   type_a_accent                kälpäskau — grammar: "Type A Accent"
%   imperfect                    kärsanoym — grammar: "Imperfect"
%   optative                     kärsoym — grammar: "Optative"
%   type_b_accent                nkémar — grammar: "Type B Accent"
%   class_ii_preterit_2          stäm — grammar: "Class II preterit"
%   salka_type                   sälka
%   type_a_accent_2              tärkau, läkau — grammar: "Type A Accent"
%   s_preterit_2                 yam — grammar: "s-preterit"
%   j_preterits_with_root_initial_palataliza_2 yätkä — grammar: "J-Preterits with Root-Initial Palatalization [Krause’s Class II]"
%   class_xi                     aks — grammar: "Class XI"
%   irregular_imperfects_of_nes_anas_be nes — grammar: "irregular imperfects of nes-/Anas- 'be'"
%   stam_type                    stäm(
%   tsa_ka_type                  tsä$ka
%   class_x_3                    yom — grammar: "Class X"
%   sigmatic_preterit_a_2        aun — grammar: "sigmatic preterit (a)"
%   present_of_class_i           i — grammar: "present of Class I"
%   second_or_persistently_thematic_conjugat keri — grammar: "Second or Persistently Thematic Conjugation: zota-thematics in -i(ye)<"
%   second_or_persistently_thematic_conjugat_2 klyeus’ä — grammar: "Second or Persistently Thematic Conjugation: simple thematics"
%   second_or_persistently_thematic_conjugat_3 kwipennä — grammar: "Second or Persistently Thematic Conjugation: denominatives with persistent -hhä/e-"
%   preterit_vi                  käm — grammar: "Preterit VI"
%   second_or_persistently_thematic_conjugat_4 kätkäsk’ä — grammar: "Second or Persistently Thematic Conjugation: causative and non-causative formations with persistent -äsk’ä/e-"
%   first_or_ri_conjugation_verbs_with_nasal käuinä — grammar: "First or ri-conjugation verbs with nasal presents"
%   second_or_persistently_thematic_conjugat_5 läkäsk’ä — grammar: "Second or Persistently Thematic Conjugation: causative and non-causative formations with persistent -äsk’ä/e-"
%   first_or_ri_conjugation_verbs_with_vowel mäkä, sälpä — grammar: "First or ri-conjugation verbs with vowel presents"
%   first_or_ri_conjugation_verbs_with_nasal_2 mäntnä — grammar: "First or ri-conjugation verbs with nasal presents"
%   mars_type                    märs(
%   first_or_ri_conjugation_verbs_with_nasal_3 pinkä — grammar: "First or ri-conjugation verbs with nasal presents"
%   first_or_ri_conjugation_verbs_with_vowel_2 piyä — grammar: "First or ri-conjugation verbs with vowel presents"
%   first_or_ri_conjugation_verbs_with_nasal_4 pälsknä — grammar: "First or ri-conjugation verbs with nasal presents"
%   sruka_type                   sruka
%   first_or_ri_conjugation_verbs_with_vowel_3 sruké — grammar: "First or ri-conjugation verbs with vowel presents"
%   sigmatic_preterit_a_3        täs — grammar: "sigmatic preterit (a)"
%   second_or_persistently_thematic_conjugat_6 winäsk’ä — grammar: "Second or Persistently Thematic Conjugation: causative and non-causative formations with persistent -äsk’ä/e-"
%   first_or_ri_conjugation_verbs_with_nasal_5 wäskännäZe — grammar: "First or ri-conjugation verbs with nasal presents"
%   subjunctive_of_class_iv      auks — grammar: "subjunctive of Class IV"
%   first_or_ri_conjugation_verbs_with_vowel_4 klautkô — grammar: "First or ri-conjugation verbs with vowel presents"
%   type_koloktar                koloktär — grammar: "Type koloktär"
%   first_or_ri_conjugation_verbs_with_nasal_6 käskännä — grammar: "First or ri-conjugation verbs with nasal presents"
%   first_or_ri_conjugation_verbs_with_nasal_7 kättänkä — grammar: "First or ri-conjugation verbs with nasal presents"
%   lant_type                    länt
%   first_or_ri_conjugation_verbs_with_vowel_5 miwä — grammar: "First or ri-conjugation verbs with vowel presents"
%   thematic_class_ii_present_2  pa — grammar: "thematic Class II present"
%   class_vii                    putk — grammar: "Class VII"
%   rutka_type                   rutka
%   first_or_ri_conjugation_verbs_with_vowel_6 räk’ä — grammar: "First or ri-conjugation verbs with vowel presents"
%   iwaja_subtype                swäsäss — grammar: "iwâjà’^-subtype"
%   iwaja_subtype_2              tswärässä — grammar: "iwâjà’^-subtype"
%   first_or_ri_conjugation_verbs_with_nasal_8 tärknä — grammar: "First or ri-conjugation verbs with nasal presents"
%   kalypiya_svibtype_krauses_class_vii_malz wsiyâ — grammar: "kâlypiyâ-svibtype [= Krause’s Class VII (Malzahn, 2010:228ff.)]"
%   subjunctive_of_class_iv_2    kärs — grammar: "subjunctive of Class IV"
%   class_vii_2                  kätk — grammar: "Class VII"
%   pautkau_type                 pautkau
%   sigmatic_preterit_b          plänk — grammar: "sigmatic preterit (b)"
%   prek_type                    prek
%   present_of_class_i_2         tsop? — grammar: "present of Class I"
%   present_of_class_i_3         yok — grammar: "present of Class I"
% Irregular (listed in data/verbs.exceptions.tsv): ABi, äkläsk- ’ä
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
