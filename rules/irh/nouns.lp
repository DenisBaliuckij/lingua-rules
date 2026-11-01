% rules/irh/nouns.lp
% Irarutu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289447: A Grammar of Irarutu, A Language of West Papua, Indonesia, with Historical Analysis (2014), pages 141, 142, 144
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   alienable_possessives        den — grammar: "alienable possessives"
%   inalienable_possession_paradigm drbon — grammar: "inalienable possession paradigm"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
