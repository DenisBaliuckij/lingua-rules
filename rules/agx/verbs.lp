% rules/agx/verbs.lp
% Agul verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40787: Грамматика агульского языка: Научно-нормативное исследование (2014), pages 125, 126, 152, 155, 156, 158, 171, 175, 180, 181, 184, 296, 297, 336, 337
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   диржас — grammar: "второе спряжение"
%   class_type_2                 акьяс — grammar: "первое спряжение"
%   class_type_3                 дуьхьес — grammar: "третье спряжение"
% Irregular (listed in data/verbs.exceptions.tsv): вес
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
