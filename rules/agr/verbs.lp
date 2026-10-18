% rules/agr/verbs.lp
% Aguaruna verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 77480: A Grammar of Aguaruna (Iiniá Chicham) (2017), pages 42, 144, 179, 191, 206, 263, 264, 265, 372, 374, 377, 378
%   doc 77483: A Grammar of Aguaruna (2007), pages 241, 248, 252, 297, 299, 362, 364, 365, 367, 368, 421
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   mau_type                     mau
%   untsu_type                   untsu
%   intermediate_past_suffix_ma_ya_following tsupi — grammar: "intermediate past suffix -ma…ya following consonant"
%   intermediate_past_suffix_ma_ya_following_2 yu — grammar: "intermediate past suffix -ma…ya following vowel"
%   antu_type                    antu
%   ma_type                      ma
%   first_conjugation_verbs_u_final_root ahakú — grammar: "First conjugation verbs, /u/ final root"
%   second_conjugation_verbs_final_root ahápi̵ — grammar: "Second conjugation verbs, /ɨ/ final root"
%   third_conjugation_type_a_verbs aú — grammar: "Third conjugation type A verbs"
%   first_conjugation_verbs_i_final_root dií — grammar: "First conjugation verbs, /i/ final root"
%   first_conjugation_verbs_a_final_root hiiná — grammar: "First conjugation verbs, /a/ final root"
%   first_conjugation_verbs_a_final_root_2 há — grammar: "First conjugation verbs, /a/ final root"
%   second_conjugation_verbs_u_final_root katsúu — grammar: "Second conjugation verbs, /u/ final root"
%   third_conjugation_type_a_verbs_2 kaú — grammar: "Third conjugation type A verbs"
%   third_conjugation_type_b_verbs kaŋkáu — grammar: "Third conjugation type B verbs"
%   second_conjugation_verbs_u_final_root_2 kuŋkúu — grammar: "Second conjugation verbs, /u/ final root"
%   first_conjugation_verbs_i_final_root_2 kãhíi — grammar: "First conjugation verbs, /i/ final root"
%   first_conjugation_verbs_final_root kãɨ́ — grammar: "First conjugation verbs, /ɨ/ final root"
%   first_conjugation_verbs_final_root_2 kɨɨ́ — grammar: "First conjugation verbs, /ɨ/ final root"
%   first_conjugation_verbs_final_root_3 mahɨ́ — grammar: "First conjugation verbs, /ɨ/ final root"
%   first_conjugation_verbs_a_final_root_3 maá — grammar: "First conjugation verbs, /a/ final root"
%   third_conjugation_type_a_verbs_3 puhú — grammar: "Third conjugation type A verbs"
%   first_conjugation_verbs_i_final_root_3 pãí — grammar: "First conjugation verbs, /i/ final root"
%   first_conjugation_verbs_i_final_root_4 tsúpi — grammar: "First conjugation verbs, /i/ final root"
%   first_conjugation_verbs_final_root_4 wɨ́ — grammar: "First conjugation verbs, /ɨ/ final root"
%   first_conjugation_verbs_a_final_root_4 áɰa — grammar: "First conjugation verbs, /a/ final root"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
