% rules/dan/adjectives.lp
% Danish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389832: Danish (2005), pages 13, 14, 16, 17
%   doc 927903: Danish: An Essential Grammar (n.d.), pages 40, 41, 61, 72, 77, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 101, 110, 115, 116
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   comparison_with_vowel_change_and_e_re_e få — grammar: "COMPARISON WITH VOWEL CHANGE AND -(E)RE, -(E)ST"
%   kedelig_type                 kedelig
%   comparison_with_vowel_change_and_e_re_e_2 lang — grammar: "COMPARISON WITH VOWEL CHANGE AND -(E)RE, -(E)ST"
%   morsom_type                  morsom
%   comparison_with_vowel_change_and_e_re_e_3 stor — grammar: "COMPARISON WITH VOWEL CHANGE AND -(E)RE, -(E)ST"
% Irregular (listed in data/adjectives.exceptions.tsv): dårlig, gammel, god, lidt, mange, meget
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
