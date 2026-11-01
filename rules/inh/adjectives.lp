% rules/inh/adjectives.lp
% Ingush adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73567: Ingush Grammar (2011), pages 78, 79, 151, 155, 157, 158, 159, 160, 246, 260, 261, 263, 336, 767, 808, 809, 812, 814, 815, 816
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   periphrastic_paradigm_j_gender dika — grammar: "periphrastic paradigm (J gender)"
%   semi_periphrastic_paradigm_d_gender doqqagha — grammar: "semi-periphrastic paradigm (D gender)"
%   participle                   d.yzaa — grammar: "participle"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
