% rules/fuf/verbs.lp
% Pular verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19522: Teaching Grammar of Pular (2017), pages 17, 35, 36, 39, 42, 58, 59, 65, 88, 89, 121, 124
%   doc 19524: Learner's Guide to Pular (Fuuta Jallon) (n.d.), pages 20, 36, 56, 101, 102, 121, 122, 123, 124
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   wonugol_type                 wonugol
%   lootugol_type                lootugol
%   ugol                         sembugol — grammar: "-ugol"
%   egol                         arsikegol — grammar: "-egol"
%   agol                         weltagol — grammar: "-agol"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
