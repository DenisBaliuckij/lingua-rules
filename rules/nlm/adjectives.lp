% rules/nlm/adjectives.lp
% Mankiyali adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920781: A First Look at Mankiyali Morphology (2022), pages 30, 31, 32, 33, 34, 35, 36, 38, 39, 40, 43, 44, 45, 49, 53, 54, 73, 74
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   type_iii_adjective           duur, saí, šu — grammar: "Type III Adjective"
%   type_ii_adjective            učat, ɣalat — grammar: "Type II Adjective"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
