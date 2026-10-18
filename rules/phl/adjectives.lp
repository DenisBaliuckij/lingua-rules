% rules/phl/adjectives.lp
% Palula adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93: A grammar of Palula (2016), pages 71, 72, 73, 74, 138, 140, 141, 142, 143, 145, 147, 149, 156, 185, 234, 246, 249, 253, 254, 274, 321, 323
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   panaaru_type                 paṇáaru, sóoru, áaḍu, óomu ...
%   dhri_u_type                  dhríɡ-u
%   puroonu_type                 puróoṇu
% Irregular (listed in data/adjectives.exceptions.tsv): bhiiroó, čaaṛaá, šóo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
