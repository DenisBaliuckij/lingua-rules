% rules/ces/adjectives.lp
% Czech adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389868: Czech (2011), pages 22, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 36, 40, 43
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   possessive_adjectives        bratrov — grammar: "Possessive adjectives"
%   hard_stems                   druhý — grammar: "Hard stems"
%   soft_stems                   první — grammar: "Soft stems"
%   short_form_adjectives        nemocný — grammar: "Short form adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
