% rules/khv/adjectives.lp
% Khwarshi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 120: A Grammar of Khwarshi (2009), pages 54, 72, 84, 119, 125, 126, 160, 162, 201
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bad_type                     ]bad
%   goqqu_type                   goqqu
%   zor_type                     zor
%   kad_type                     kad
%   substantive_adjectives       c’alidow — grammar: "Substantive adjectives"
%   substantive_adjectives_2     iSSu — grammar: "Substantive adjectives"
%   substantive_adjectives_3     gurma — grammar: "Substantive adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
