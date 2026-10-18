% rules/agx/nouns.lp
% Agul nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40787: Грамматика агульского языка: Научно-нормативное исследование (2014), pages 125, 126, 152, 155, 156, 158, 171, 175, 180, 181, 184, 296, 297, 336, 337
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   геда — grammar: "Основное склонение"
%   class_type_2                 дад — grammar: "Основное склонение"
%   class_type_3                 къирагь — grammar: "Основное склонение"
%   class_type_4                 ликӀеф — grammar: "Основное склонение"
%   class_type_5                 хураф, хуруф — grammar: "Основное склонение"
%   class_type_6                 цӀа — grammar: "Основное склонение"
%   class_type_7                 ликӀиф — grammar: "Основное склонение"
%   class_type_8                 гьазӀай — grammar: "Основное склонение"
%   class_type_9                 ягъцӀур — grammar: "количественных числительных"
%   class_type_10                агъзур — grammar: "количественных числительных"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
