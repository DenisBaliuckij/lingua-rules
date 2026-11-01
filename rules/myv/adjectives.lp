% rules/myv/adjectives.lp
% Erzya (Serkali dialect) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15538: An Introductory Course of the Erzya Language (2014), pages 19, 26, 29, 39, 40, 46, 47, 51, 52, 53, 58, 60, 70, 76, 77
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   definite_declension          kolmo — grammar: "definite declension"
%   definite_declension_2        vejke — grammar: "definite declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
