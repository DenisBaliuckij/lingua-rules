% rules/bgq/adjectives.lp
% Bagri adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389220: A Descriptive Grammar of Bagri (1999), pages 62, 63, 89, 90, 91, 101, 102, 108, 110, 127
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   accho_type                   accho
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
