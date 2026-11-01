% rules/rmo/nouns.lp
% Sinte Manush Romani (Auvergne dialect) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289476: Grammaire du Manouche d'Auvergne (n.d.), pages 2, 5, 10, 11, 13
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   type_2_feminin               cay — grammar: "Type 2 Féminin"
%   type_1_masculin              chavo — grammar: "Type 1 Masculin"
%   type_2_feminin_2             chay — grammar: "Type 2 Féminin"
%   type_1_masculin_2            cavo — grammar: "Type 1 Masculin"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
