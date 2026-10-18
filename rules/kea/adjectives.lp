% rules/kea/adjectives.lp
% Cape Verdean Creole adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388190: The Syntax of Cape Verdean Creole: The Sotavento Varieties (2010), pages 57, 70, 71, 82
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   possessive_adjectives        bu — grammar: "Possessive adjectives"
%   possessive_adjectives_2      nha — grammar: "Possessive adjectives"
%   possessive_adjectives_3      nhos — grammar: "Possessive adjectives"
%   possessive_adjectives_4      nos — grammar: "Possessive adjectives"
%   possessive_adjectives_5      se — grammar: "Possessive adjectives"
%   possessive_adjectives_6      ses — grammar: "Possessive adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
