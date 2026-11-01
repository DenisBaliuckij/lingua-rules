% rules/fuc/adjectives.lp
% Pulaar adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19521: Précis de grammaire et de lexique du peul du Fouta Djallon (2015), pages 77, 83, 84, 91, 92, 102, 103, 123, 124, 173
%   doc 841997: Pulaar Language Manual (1987), pages 7, 8
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   raneere_type                 raneere
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
