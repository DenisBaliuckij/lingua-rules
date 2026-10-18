% rules/hit/verbs.lp
% Hittite verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8741: A Comparative Grammar of the Hittite Language, Volume I (1951), pages 73, 112, 138, 153, 169, 182
%   doc 389902: A Grammar of the Hittite Language: Part 1: Reference Grammar (2008), pages 103, 106, 110, 111, 114, 117, 118, 125, 131, 139, 144, 145, 147, 149, 212, 219, 225, 229, 233, 238, 241, 242, 244, 245, 247, 250, 253, 254
%   doc 389903: Hittite Grammar (2008), pages 26, 27, 30, 33, 35, 50, 51, 52, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 74, 76, 77, 78
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   pai_type                     pāi
%   unmixed_mi_conjugation_stems_in_iya iya — grammar: "unmixed mi-conjugation stems in -iya-"
%   me_ma_i_type                 me-ma-i
%   hi_verbs                     tarna — grammar: "ḫi-Verbs"
%   mi_verbs                     arnu, assanu — grammar: "mi-Verbs"
%   mi_verbs_2                   kuen — grammar: "mi-Verbs"
%   unmixed_mi_conjugation_stems_in_iya_2 tiya — grammar: "unmixed mi-conjugation stems in -iya-"
%   uwa_type                     uwa
%   hi_verbs_2                   uda — grammar: "ḫi-Verbs"
%   hi_verbs_3                   dā — grammar: "ḫi-Verbs"
%   dai_type                     dāi
%   mi_conjugation_consonant_stems_monosylla es — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   har_type                     har
%   hi_conjugation_consonant_stems_with_one ar — grammar: "hi-Conjugation; Consonant stems; With one final consonant"
%   mi_conjugation_consonant_stems_monosylla_2 ep — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   mi_conjugation_consonant_stems_monosylla_3 istamas, punus, ās — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   nai_type                     nāi
%   polysyllabic_stems           uwate, pehute — grammar: "Polysyllabic stems"
%   ai_stems                     handāi — grammar: "āi-stems"
%   pahs_type                    pahs
%   iteratives_in_sk             dask — grammar: "Iteratives in -sk-"
%   ai_stems_2                   kappuwāi — grammar: "āi-stems"
%   consonant_stems              kis — grammar: "Consonant stems"
%   iteratives_in_sk_2           pesk — grammar: "Iteratives in -sk-"
%   c3rd_pers_pl_present_built_on_the_model sarra, unna — grammar: "3rd Pers. Pl. Present built on the model of the verbs in -ya"
%   monosyllabic_stems           wahnu, hā — grammar: "Monosyllabic stems"
%   ablauting_stems_in_a_i       ḫatrāi — grammar: "Ablauting Stems in -ā(i)-"
%   mi_verbs_3                   kuer — grammar: "mi-Verbs"
%   hi_verbs_4                   mema — grammar: "ḫi-Verbs"
%   hi_verbs_5                   penna — grammar: "ḫi-Verbs"
%   te_type                      te
%   hi_verbs_6                   uppa — grammar: "ḫi-Verbs"
%   iteratives_in_sk_3           usk — grammar: "Iteratives in -sk-"
%   harnik_type                  harnik
%   iya_stems                    huitiya — grammar: "iya-stems"
%   pahsanu_type                 pahsanu
%   peda_type                    pēda
%   hi_conjugation_consonant_stems_with_one_2 sak — grammar: "hi-Conjugation; Consonant stems; With one final consonant"
%   unmixed_mi_conjugation_stems_in_iya_3 wemiya, ḫuittiya — grammar: "unmixed mi-conjugation stems in -iya-"
%   ablauting_stems_in_a_i_2     ḫandāi — grammar: "Ablauting Stems in -ā(i)-"
%   consonantal_paradigm_end_medio_passive arḫa — grammar: "consonantal paradigm end medio-passive"
%   mi_conjugation_consonant_stems_monosylla_4 eku — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   c3rd_pers_pl_present_built_on_the_model_2 essa — grammar: "3rd Pers. Pl. Present built on the model of the verbs in -ya"
%   halzi_type                   halzi
%   ai_stems_3                   hatrāi — grammar: "āi-stems"
%   hi_verbs_7                   išḫiḫḫi — grammar: "ḫi-Verbs"
%   mi_conjugation_consonant_stems_monosylla_5 ses — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   polysyllabic_stems_2         wete — grammar: "Polysyllabic stems"
%   hi_verbs_8                   šarra — grammar: "ḫi-Verbs"
%   iteratives_in_sk_4           akkusk — grammar: "Iteratives in -sk-"
%   hi_verbs_9                   dālaḫḫi — grammar: "ḫi-Verbs"
%   root_verbs_with_radical_e_b_0_and_final e-eS-zi — grammar: "Root Verbs with Radical e/b/0 and Final Consonant"
%   consonantal_paradigm_end_medio_passive_2 kišḫa — grammar: "consonantal paradigm end medio-passive"
%   ablauting_verbs_in_ai        nai — grammar: "Ablauting verbs in -ai-"
%   ablauting_verbs_in_ai_2      pai — grammar: "Ablauting verbs in -ai-"
%   hi_verbs_10                  peda — grammar: "ḫi-Verbs"
%   wasta_type                   wasta
%   mi_verbs_4                   waḫnu — grammar: "mi-Verbs"
%   mi_conjugation_consonant_stems_monosylla_6 wek — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   vocalic_stem_paradigms       zaḫḫiya — grammar: "vocalic stem paradigms"
%   ablauting_verbs_in_ai_3      dai — grammar: "Ablauting verbs in -ai-"
%   huwai_type                   huwāi
%   monosyllabic_stems_2         lā — grammar: "Monosyllabic stems"
%   maniyahh_type                maniyahh, idalawahh
%   ninik_type                   ninik
%   hi_verbs_11                  wašta — grammar: "ḫi-Verbs"
%   ablauting_verbs_in_ai_4      ḫalzai — grammar: "Ablauting verbs in -ai-"
%   hi_conjugation_consonant_stems_with_one_3 asas — grammar: "hi-Conjugation; Consonant stems; With one final consonant"
%   iyahhahat_type               iyahhahat
%   vocalic_stem_paradigms_2     neya — grammar: "vocalic stem paradigms"
%   mi_verbs_5                   paḫšan — grammar: "mi-Verbs"
%   sipand_type                  sipand
%   taks_type                    taks
%   class_ii_a_stems             tar-na-i — grammar: "Class II, a-stems"
%   ablauting_verbs_in_ai_5      zai — grammar: "Ablauting verbs in -ai-"
%   a_us_zi_type                 a-us-zi
%   hi_conjugation_consonant_stems_with_one_4 ak — grammar: "hi-Conjugation; Consonant stems; With one final consonant"
%   class_ii_a_stems_2           da-a-i — grammar: "Class II, a-stems"
%   mi_conjugation_consonant_stems_similar_w ed — grammar: "mi-Conjugation; Consonant stems; Similar, with the insertion of an -s- between the root and the ending"
%   halzai_type                  halzāi
%   vocalic_stem_paradigms_3     ki — grammar: "vocalic stem paradigms"
%   stems_originally_in_cw       laḫw — grammar: "Stems Originally in -Cw-"
%   mi_conjugation_consonant_stems_monosylla_7 nah, idalawes — grammar: "mi-Conjugation; Consonant stems; Monosyllabic stems with one final consonant"
%   hi_verbs_12                  paḫš — grammar: "ḫi-Verbs"
%   class_ii_a_stems_3           sar-ra-i — grammar: "Class II, a-stems"
%   root_verbs_with_radical_e_b_0_and_final_2 se-es-zi — grammar: "Root Verbs with Radical e/b/0 and Final Consonant"
%   consonantal_paradigm_end_medio_passive_3 tarup — grammar: "consonantal paradigm end medio-passive"
%   hi_verbs_13                  šiyami — grammar: "ḫi-Verbs"
%   hi_verbs_14                  aš — grammar: "ḫi-Verbs"
%   mi_verbs_6                   aššan — grammar: "mi-Verbs"
%   class_ii_a_stems_4           e-es-sa-i — grammar: "Class II, a-stems"
%   hamenk_type                  hamenk
%   huek_type                    huek
%   class_ii_a_stems_5           iS-Sa-i — grammar: "Class II, a-stems"
%   mi_verbs_7                   paḫḫaššan — grammar: "mi-Verbs"
%   suppiyahh_type               suppiyahh
%   uwahhat_type                 uwahhat
%   mi_verbs_8                   ḫuek — grammar: "mi-Verbs"
%   a_ki_type                    a-ki
%   hi_conj                      isparzahhun — grammar: "hi-conj."
%   neyahhat_type                neyahhat
%   ai_stems_4                   sarkuwāi — grammar: "āi-stems"
%   root_verbs_with_radical_e_b_0_and_final_3 wa-ah-zi — grammar: "Root Verbs with Radical e/b/0 and Final Consonant"
%   vocalic_stems                zahhiya — grammar: "Vocalic stems"
%   zahhiyahhat_type             zahhiyahhat
%   zi_type                      zi
%   consonantal_paradigm_end_medio_passive_4 ēšḫa — grammar: "consonantal paradigm end medio-passive"
%   ablauting_stems_in_a_i_3     irḫāi — grammar: "Ablauting Stems in -ā(i)-"
%   hi_verbs_15                  išpant — grammar: "ḫi-Verbs"
%   kittat_type                  kittat
%   pa_a_i_type                  pa-a-i
%   sarnik_type                  sarnik
%   root_verbs_with_radical_e_b_0_and_final_4 u-e-ih-zi — grammar: "Root Verbs with Radical e/b/0 and Final Consonant"
%   hi_conjugation_consonant_stems_with_one_5 wak — grammar: "hi-Conjugation; Consonant stems; With one final consonant"
%   polysyllabic_stems_3         watku — grammar: "Polysyllabic stems"
%   ha_a_si_type                 ha-a-si
%   class_ii_a_stems_6           ku-en-na-i — grammar: "Class II, a-stems"
%   vocalic_stems_2              maniyah — grammar: "Vocalic stems"
%   mi_conjugation_consonant_stems_similar_w_2 mat — grammar: "mi-Conjugation; Consonant stems; Similar, with the insertion of an -s- between the root and the ending"
%   consonantal_paradigm_end_medio_passive_5 paḫḫašḫa — grammar: "consonantal paradigm end medio-passive"
%   monosyllabic_stems_3         sā — grammar: "Monosyllabic stems"
%   class_ii_a_stems_7           ta-la-a-i — grammar: "Class II, a-stems"
%   zai_type                     zāi
% Irregular (listed in data/verbs.exceptions.tsv): dala, ishāi, ka-ra-a-pt ka-a-ra-pl ga-ra-pl, parsāi, sunna, sāi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
