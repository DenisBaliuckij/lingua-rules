% rules/yev/nouns.lp
% Yeri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68685: A Grammar of Yeri: a Torricelli language of Papua New Guinea (2017), pages 119, 120, 159, 176, 264, 272, 281, 282, 285, 287, 344
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_8_lexical_allomorphs_l_v_and_l_bia hano — grammar: "Class 8 lexical allomorphs: -l(V) and -(l)bia"
%   class_12_lexical_allomorph_i haper — grammar: "Class 12 lexical allomorph: -i"
%   class_1_phonological_allomorph_gal hayir — grammar: "Class 1 phonological allomorph: -gal"
%   class_12_lexical_allomorph_i_2 hur — grammar: "Class 12 lexical allomorph: -i"
%   class_2_lexical_allomorph_hegal libi — grammar: "Class 2 lexical allomorph: -hegal"
%   class_1_phonological_allomorph_gal_2 mawu — grammar: "Class 1 phonological allomorph: -gal"
%   controller_class_4_semantic_agreement_gf mayi — grammar: "Controller class 4: Semantic agreement GF (2 forms)"
%   class_8_lexical_allomorphs_l_v_and_l_bia_2 nage — grammar: "Class 8 lexical allomorphs: -l(V) and -(l)bia"
%   class_12_lexical_allomorph_i_3 nal — grammar: "Class 12 lexical allomorph: -i"
%   class_8_lexical_allomorphs_l_v_and_l_bia_3 nanu — grammar: "Class 8 lexical allomorphs: -l(V) and -(l)bia"
%   class_12_lexical_allomorph_i_4 nebo — grammar: "Class 12 lexical allomorph: -i"
%   class_8_lexical_allomorphs_l_v_and_l_bia_4 neige — grammar: "Class 8 lexical allomorphs: -l(V) and -(l)bia"
%   class_2_lexical_allomorph_hegal_2 tabu — grammar: "Class 2 lexical allomorph: -hegal"
%   te_type                      te
%   class_1_phonological_allomorph_gal_3 wanesi — grammar: "Class 1 phonological allomorph: -gal"
%   class_8_lexical_allomorphs_l_v_and_l_bia_5 wayia — grammar: "Class 8 lexical allomorphs: -l(V) and -(l)bia"
%   class_2_lexical_allomorph_hegal_3 wibia — grammar: "Class 2 lexical allomorph: -hegal"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
