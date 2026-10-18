% rules/bhw/nouns.lp
% Biak nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 905870: BIAK MORPHOSYNTAX (2008), pages 40, 41, 49, 65, 66, 68, 70, 71, 72, 122, 252, 256
%   doc 905871: Biak: Description of an Austronesian Language of Papua (2006), pages 84, 90, 261, 263, 341
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kinship_terms                me — grammar: "kinship terms"
%   inalienable_morphology_for_mebin_cross_a mebin — grammar: "Inalienable morphology for mebin 'cross-aunt'"
%   kinship_terms_2              kma — grammar: "kinship terms"
%   kinship_terms_3              sna — grammar: "kinship terms"
%   body_parts_whose_actual_number_is_two bra, kna, mka — grammar: "body parts whose actual number is two"
%   body_parts_whose_actual_number_is_one bru, kro, sba, sne — grammar: "body parts whose actual number is one"
%   body_parts_whose_actual_number_is_two_2 snonis — grammar: "body parts whose actual number is two"
%   kinship_terms_4              imbanyo — grammar: "kinship terms"
%   kinship_terms_5              kpu — grammar: "kinship terms"
%   kinship_terms_6              mambanyo — grammar: "kinship terms"
%   inalienable_nouns            na-‘teeth — grammar: "inalienable nouns"
%   inalienable_morphology_for_napirm_cross napirm — grammar: "Inalienable morphology for napirm 'cross-cousin'"
%   inalienable_morphology_for_srar_cross_si srar — grammar: "Inalienable morphology for srar 'cross-sibling'"
%   kinship_terms_7              swa — grammar: "kinship terms"
% Irregular (listed in data/nouns.exceptions.tsv): brampin- fingers, kna ‘ear, mka ‘eyes, sba- ‘mouth, sne- ‘stomach
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
