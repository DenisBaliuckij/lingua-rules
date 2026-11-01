% rules/tzm/nouns.lp
% Tamazight (Central Atlas) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296244: A Reference Grammar of Tamazight (1974), pages 136, 196, 197, 217, 218, 221, 223, 224, 249, 251, 255, 262
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   mixed_plurals_internal_plurals_with_exte tad:art — grammar: "Mixed Plurals (Internal Plurals with External Suffixes)"
%   mixed_plurals_internal_plurals_with_exte_2 tafust — grammar: "Mixed Plurals (Internal Plurals with External Suffixes)"
%   tagrtilt_type                tagrtilt
%   tamyrust_type                tamyrust
%   taq_b_ut_type                taq:b:ut
%   mixed_plurals_internal_plurals_with_exte_3 tawariyt — grammar: "Mixed Plurals (Internal Plurals with External Suffixes)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
