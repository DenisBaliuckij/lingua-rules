% rules/mar/adjectives.lp
% Marathi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292857: Grammar of the Marathi Language (1834), pages 37, 41, 43, 87, 90, 91, 92, 93, 95, 96, 99, 106, 123
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   dec_i                        चांगला — grammar: "Dec. I"
%   dec_i_2                      असा — grammar: "Dec. I"
%   dec_i_3                      वाईट — grammar: "Dec. I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
