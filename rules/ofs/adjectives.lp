% rules/ofs/adjectives.lp
% Old Frisian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388730: An Introduction to Old Frisian: History, Grammar, Reader, Glossary (2009), pages 67, 68, 69, 72, 73, 74, 75, 76, 77, 78, 84, 85, 88, 89, 97, 98
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   strong_declension            grāt — grammar: "Strong declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
