% rules/awc/verbs.lp
% Cicipu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 20896: C'Lela Grammar Portrait (2015), pages 41, 69, 70, 71, 73, 74, 96, 97, 126
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   biti_type                    bìtí
%   disyllabic_verbs_with_final_vowel_elidin kùmù — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (1) L"
%   disyllabic_verbs_with_final_vowel_elidin_2 lɘ́vɘ̀ — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (2) H L"
%   monosyllabic_verbs_3_l_h     nɛ̀ — grammar: "Monosyllabic verbs (3) L (H)"
%   monosyllabic_verbs_1_l       sɔ̀ — grammar: "Monosyllabic verbs (1) L"
%   monosyllabic_verbs_2_h       tɔ́ — grammar: "Monosyllabic verbs (2) H"
%   monosyllabic_verbs_3_l_h_2   tɘ̀ — grammar: "Monosyllabic verbs (3) L (H)"
%   disyllabic_verbs_with_final_vowel_elidin_3 wá:gà — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (2) H L"
%   disyllabic_verbs_with_final_vowel_elidin_4 dɔ̀vɔ̀ — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (1) L"
%   disyllabic_verbs_with_final_vowel_elidin_5 gùzú — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (3) L H"
%   disyllabic_verbs_with_final_vowel_elidin_6 vòsá — grammar: "Disyllabic verbs with Final Vowel eliding in all word-medial contexts (3) L H"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
