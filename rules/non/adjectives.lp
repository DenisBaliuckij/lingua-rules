% rules/non/adjectives.lp
% Old Norse adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388602: A New Introduction to Old Norse: Part I - Grammar (2008), pages 59, 61, 63, 73, 75, 77, 79, 116, 123, 130, 185, 186, 187, 188, 189
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   strong_inflexion             harðr — grammar: "Strong inflexion"
%   strong_inflexion_2           sjúkr — grammar: "Strong inflexion"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
