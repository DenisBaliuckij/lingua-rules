% rules/knj/adjectives.lp
% Akateko adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 106212: Snaahil Kuyu Ti'e Akateko: Gramática Descriptiva del Idioma Akateko (2013), pages 47, 48, 49, 58, 59, 61, 71, 72, 73, 74, 94, 95, 96, 97, 98, 99, 100, 101, 112, 113, 114, 115, 126
%   doc 106214: Gramática Normativa Akateka (2015), pages 179, 255, 262, 264, 265, 266, 271, 272, 282, 300, 301, 302, 303, 309, 310, 311
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   titi_type                    titi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
