% rules/har/verbs.lp
% Harari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2541: Harari: A Descriptive Grammar (2013), pages 107, 127, 142, 181, 184, 191, 192, 197, 198, 200, 242, 251, 254, 265, 338, 389
%   doc 9713: Break Down of Harari Grammar (Intermediate level) (2012), pages 41, 42, 70, 71, 73, 98, 99, 102
%   doc 853092: The Verb in Harari (South Ethiopic) (1958), pages 27, 33, 37, 46, 48, 52, 53, 58, 59, 60, 61, 63, 64, 65, 67, 68, 72, 74, 75, 76, 79, 80, 81, 83, 84, 90, 91
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   existential_imperfective     när — grammar: "existential (imperfective)"
%   existential_perfective       nār — grammar: "existential (perfective)"
%   jussive_imperative_verb      sbär — grammar: "Jussive-imperative verb"
%   present_copula               t — grammar: "present copula"
%   obligative                   ħal — grammar: "obligative"
%   eda_type                     éda
%   keb_type                     kēb
%   secha_type                   secha
%   imperfective_ipv_conjugations_of_the_bas säbr — grammar: "imperfective (IPV) conjugations of the basic stem (BS)"
%   el_type                      ēl
%   al_type                      ħāl
%   baya_type                    baya
%   jussive_verb_with_object_marking ēmd — grammar: "Jussive verb with object marking"
%   compound_imperfect           tigadlat — grammar: "compound imperfect"
%   jussive                      yagdal — grammar: "jussive"
%   simple_imperfect             yigadli — grammar: "simple imperfect"
%   stem_with_af_type_b          athébara — grammar: "Stem with af- Type B"
%   stem_with_af_type_a          athétara — grammar: "Stem with af- Type A"
%   type_b_with_af               atléqaha — grammar: "Type B with af-"
%   perfect                      gadéla — grammar: "perfect"
%   negative_imperfect_aysibdr   sibar — grammar: "negative imperfect aysibdr"
%   type_a_with_e                tafataba — grammar: "Type A with /é-"
%   stem_with_t4_type_c          tagaba'a — grammar: "Stem with t4- Type C"
%   stem_with_t4_type_d          tagora'a — grammar: "Stem with t4- Type D"
%   stem_with_7e_type_b          tahebara — grammar: "Stem with 7é- Type B"
%   stem_with_t4_type_b          tahéma'a — grammar: "Stem with t4- Type B"
%   type_a_with_l                tilahada — grammar: "Type A with l-"
%   type_d_tri_consonantal_reciprocal tägulāläbu — grammar: "Type D tri-consonantal reciprocal"
%   type_c_tri_consonantal_reciprocal tät'āmäsu — grammar: "Type C tri-consonantal reciprocal"
%   type_a_tri_consonantal_reciprocal täwādädu — grammar: "Type A tri-consonantal reciprocal"
%   type_b_tri_consonantal_reciprocal tāzālämu — grammar: "Type B tri-consonantal reciprocal"
%   compound_imperfect_2         yigddlal — grammar: "compound imperfect"
%   type_a_with_a                abilaha — grammar: "Type A with a-"
%   aga_type                     aga
%   stem_with_a_type_c           amaga — grammar: "Stem with a- Type C"
%   bi_consonantal_direct_causative_verbs_ty amāğa, amōqa — grammar: "bi-consonantal direct causative verbs Type C"
%   stem_with_a_type_d           aqosa — grammar: "Stem with a- Type D"
%   asa_type                     asa
%   stem_with_a_type_a           atafa — grammar: "Stem with a- Type A"
%   frequentative_causative_of_reciprocal athérdga — grammar: "Frequentative Causative of reciprocal"
%   stem_with_at_type_c          atliya — grammar: "Stem with at- Type C"
%   type_c                       bakdka — grammar: "Type C"
%   dta_type                     dta
%   type_c_tri_consonantal_verbs dāmäs — grammar: "Type C Tri-consonantal Verbs"
%   type_b                       geraba — grammar: "Type B"
%   type_a                       gilabita — grammar: "Type A"
%   frequentative_basic_stem_type_a jwara — grammar: "Frequentative Basic stem Type A"
%   type_a_2                     lahasa — grammar: "Type A"
%   type_c_2                     ligalaqa — grammar: "Type C"
%   frequentative                lilabita — grammar: "Frequentative"
%   type_d                       magdda — grammar: "Type D"
%   meta_motd                    mota — grammar: "méta (motd)"
%   type_c_3                     qaba'a — grammar: "Type C"
%   type_a_3                     sabdr — grammar: "Type A"
%   compound_imperfect_yisabrumiel sdbri — grammar: "compound imperfect (yisabrumiél)"
%   meta_motd_2                  soma — grammar: "méta (motd)"
%   type_b_with_e                tagéraha — grammar: "Type B with /é-"
%   stem_with_7e_type_a          tahandgqa — grammar: "Stem with 7é- Type A"
%   compound_imperfect_3         tigddlak — grammar: "compound imperfect"
%   simple_imperfect_2           tigddyi — grammar: "simple imperfect"
%   meta_motd_3                  tora — grammar: "méta (motd)"
%   adaqa_type                   ādäqa
%   frequentative_a_stem_type_a  afrara — grammar: "Frequentative a- stem Type A"
%   al_type_2                    al
%   type_b_with_a                aléqaba — grammar: "Type B with a-"
%   bi_consonantal_direct_causative_verbs_ty_2 alēt'a — grammar: "bi-consonantal direct causative verbs Type B"
%   bi_consonantal_direct_causative_verbs_ty_3 asäča — grammar: "bi-consonantal direct causative verbs Type A"
%   stem_with_at_type_b          athega — grammar: "Stem with at- Type B"
%   type_a_with_af               atqedaha — grammar: "Type A with af-"
%   stem_with_at_type_a          atqera — grammar: "Stem with at- Type A"
%   stem_with_at_type_d          atqo¢a — grammar: "Stem with at- Type D"
%   attewdqa_type                attéwdqa
%   type_d_2                     borada — grammar: "Type D"
%   drdda_type                   drdda
%   type_d_3                     gora'a — grammar: "Type D"
%   jawa_type                    jawa
%   compound_imperfect_4         nagdédlana — grammar: "compound imperfect"
%   type_c_4                     qebira — grammar: "Type C"
%   compound_imperfect_5         sabral — grammar: "compound imperfect"
%   sda_type                     sda
%   stem_with_e_type_b           tabaga — grammar: "Stem with #é- Type B"
%   frequentative_reciprocal     taberdgu — grammar: "Frequentative Reciprocal"
%   type_b_with_l                tafehaga — grammar: "Type B with l-"
%   stem_with_t4_type_a          tandsa'a — grammar: "Stem with t4- Type A"
%   compound_imperfect_6         tigddlas — grammar: "compound imperfect"
%   type_a_4                     wagqata — grammar: "Type A"
%   wala_type                    wala
%   type_c_5                     walila — grammar: "Type C"
%   jussive_2                    yagdalu — grammar: "jussive"
%   compound_imperfect_7         yigadlalu — grammar: "compound imperfect"
%   simple_imperfect_3           yigddlu — grammar: "simple imperfect"
%   arada_type                   āräda
%   ea_type                      #éa
%   stem_with_a_type_b           aqgéta — grammar: "Stem with a- Type B"
%   stem_with_a_type_a_2         aragaa — grammar: "Stem with a- Type A"
%   stem_with_a_type_a_3         awasika — grammar: "Stem with a- Type A"
%   type_a_5                     ka?aba — grammar: "Type A"
%   nk_type                      nk
%   stem_with_e_type_b_2         tagdna — grammar: "Stem with #é- Type B"
%   stem_with_7e_type_a_2        tdwaqata — grammar: "Stem with 7é- Type A"
%   compound_imperfect_8         tigddlaku — grammar: "compound imperfect"
%   type_b_2                     wetafa — grammar: "Type B"
% Irregular (listed in data/verbs.exceptions.tsv): atka' aba, atw eqata, atw étafa, baga, bala'a, diga, huluf ialakh, yoqin asha
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
