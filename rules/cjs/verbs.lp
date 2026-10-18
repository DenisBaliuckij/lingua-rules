% rules/cjs/verbs.lp
% Shor verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388298: Учебник шорского языка (1992), pages 31, 37, 53, 54, 61, 71, 72, 73, 81, 83, 93, 254
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_type                   ал — grammar: "Спряжение глаголов, оканчивающихся на согласный звук"
%   class_type_2                 алчаң
%   class_type_3                 келчең
%   class_type_4                 кел
%   class_type_5                 пардым
%   class_type_6                 сарна — grammar: "Спряжение глаголов, оканчивающихся на гласный звук"
%   class_type_7                 чет
%   class_type_8                 айтпаар
%   class_type_9                 парбаар
%   class_type_10                қонмаар
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
