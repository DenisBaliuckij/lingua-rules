% rules/udm/verbs.lp
% Udmurt verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388487: Грамматика современного удмуртского языка: Фонетика и морфология (1962), pages 84, 127, 166, 174, 175, 176, 180, 182, 196, 199, 209
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c1                           мисько — grammar: "1-е спряжение"
%   c1_2                         сылны — grammar: "1-е спряжение"
%   c2                           ужаны — grammar: "2-е спряжение"
%   c2_2                         юало — grammar: "2-е спряжение"
%   class_type                   ветлыны
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
