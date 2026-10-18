% rules/xtn/adjectives.lp
% Northern Tlaxiaco Mixtec adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 69357: Gramática popular: Mixteco del norte de Tlaxiaco (2016), pages 22, 53, 54, 68, 128, 129, 130
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
% Irregular (listed in data/adjectives.exceptions.tsv): kani, kaꞌnu, luluu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
