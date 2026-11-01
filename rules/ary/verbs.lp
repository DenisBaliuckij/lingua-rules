% rules/ary/verbs.lp
% Moroccan Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41669: The Routledge Introductory Course in Moroccan Arabic (2018), pages 149, 157, 159, 160, 173, 183, 202, 216, 228, 329, 340, 384, 449, 454, 502, 510, 555
%   doc 41673: A Grammar of Moroccan Arabic (2004), pages 39, 40, 41, 42, 44, 45, 66
%   doc 389983: Arabic, An Introduction to Moroccan (n.d.), pages 35, 36, 81, 82, 84, 85, 86, 91, 175, 176, 178, 180, 185, 190, 193
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   final_weak_triradical_verbs_form_i bda, bḡa, za — grammar: "final weak triradical verbs (Form I)"
%   form_iii_sound               sam — grammar: "Form III Sound"
%   form_vi_sound                tfahm — grammar: "Form VI Sound"
%   medial_weak_verbs            xaf — grammar: "medial weak verbs"
%   quadriliteral_verb           tr — grammar: "Quadriliteral Verb"
%   final_weak_triradical_verbs_form_i_2 xda — grammar: "final weak triradical verbs (Form I)"
%   medial_weak_form_ii_verbs    kw:n — grammar: "medial weak Form II verbs"
%   medial_weak_form_ii_verbs_2  fy:q — grammar: "medial weak Form II verbs"
%   kan_type                     kan
%   qal_type                     qal
%   form_ii_final_weak_verbs     xl:a — grammar: "Form II final weak verbs"
%   weak_form_ii_verbs           ta-tqeṟṟi — grammar: "weak Form II verbs"
%   hollow_verbs                 √ša — grammar: "Hollow verbs"
%   ad_i_type                    ad:i
%   bav_type                     baV
%   dq_type                      dq
%   participle                   saken — grammar: "participle"
%   form_vii_sound               t — grammar: "Form VII Sound"
%   medial_weak_verbs_2          bil — grammar: "medial weak verbs"
%   medial_weak_verbs_3          kun — grammar: "medial weak verbs"
%   final_weak_triradical_verbs_form_i_3 ta — grammar: "final weak triradical verbs (Form I)"
%   suf_type                     šuf
%   srb_type                     šṟb
%   denn_type                    denn
%   dxl_type                     dxl
%   kri_type                     kri
%   stems_ending_in_ec           rbT — grammar: "-stems ending in –eC"
%   xra_type                     xṛa
%   form_t_ii_present_tense      √qṟa — grammar: "Form t-II, present tense"
%   dir_type                     dir
%   stems_ending_in_c            ktb — grammar: "Stems ending in “¶C”"
%   form_i_final_weak            qa — grammar: "Form I Final Weak"
%   verbs_of_the_type_qr_a_a     qṟa — grammar: "verbs of the type √qṟ a/a"
%   stems_ending_in_a_doubled_consonant šemm — grammar: "stems ending in a doubled consonant"
%   form_ii_verbs                ḥeṣṣel — grammar: "Form II verbs"
%   form_t_i_past_tense          √fhm — grammar: "Form t-I, past tense"
%   c3_consonant_radicals        √ktb — grammar: "3 consonant radicals"
%   idem_short_u_in_present_tense √skn — grammar: "Idem, short ŭ in present tense"
%   final_weak_verbs             la — grammar: "final weak verbs"
%   stems_ending_in_c_2          sijjib — grammar: "Stems ending in “¶C”"
%   d_a_type                     d:a
%   getta_type                   geTTa
%   qra_type                     qra
%   form_v_sound                 t'll:m — grammar: "Form V Sound"
%   form_ii_verbs_2              ṣewweb — grammar: "Form II verbs"
%   form_t_iii_present_tense     √qđa — grammar: "Form t-III, present tense"
%   form_t_i_present_tense       √đṟb — grammar: "Form t-I, present tense"
%   form_iii_present_tense       √ħwl — grammar: "Form III, present tense"
%   form_t_i_past_tense_2        √šṟb — grammar: "Form t-I, past tense"
%   form_t_i_present_tense_2     √žrħ — grammar: "Form t-I, present tense"
%   bqa_type                     bqa
%   mqa_type                     mqa
%   irregular_participles        dda — grammar: "irregular participles"
%   form_i_transitive            f — grammar: "Form I (transitive)"
%   ktb_type                     kt¶b
%   quadriliteral_sound_verbs    trzm — grammar: "quadriliteral sound verbs"
%   sra_type                     šra
%   hollow_verbs_2               √da — grammar: "Hollow verbs"
%   form_t_ii_present_tense_2    √hrs — grammar: "Form t-II, present tense"
%   form_t_ii_past_tense         √kml — grammar: "Form t-II, past tense"
%   hollow_verbs_3               √xa — grammar: "Hollow verbs"
%   form_t_ii_past_tense_2       √zwž — grammar: "Form t-II, past tense"
%   form_iii_present_tense_2     √žwb — grammar: "Form III, present tense"
%   form_t_ii_present_tense_3    √ɛlm — grammar: "Form t-II, present tense"
%   form_iii_present_tense_3     √ɛwn — grammar: "Form III, present tense"
% Irregular (listed in data/verbs.exceptions.tsv): VTi, fy:q 'to wake someone up, kla, mša, t'i's:a 'to eat dinner, ža
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
