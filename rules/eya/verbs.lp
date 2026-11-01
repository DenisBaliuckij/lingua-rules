% rules/eya/verbs.lp
% Eyak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 52931: Eyak Grammar (2015), pages 123
%   doc 389005: Eyak Grammar Draft in Progress: Contents and Introduction (2010), pages 168
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kuxah_type                   k’uXah
%   dimensional_neuter_imperfective cha'sh — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_2 dik — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_3 djidjg — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_4 gut'g — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_5 kuts'g — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_6 lu'd — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_7 t'u — grammar: "dimensional Neuter imperfective"
%   dimensional_neuter_imperfective_8 tsidzg — grammar: "dimensional Neuter imperfective"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
