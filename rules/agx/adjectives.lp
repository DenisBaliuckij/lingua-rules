% rules/agx/adjectives.lp
% Agul adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40787: Грамматика агульского языка: Научно-нормативное исследование (2014), pages 125, 126, 152, 155, 156, 158, 171, 175, 180, 181, 184, 296, 297, 336, 337
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   class_type                   батӀарф — grammar: "Основное склонение"
%   class_type_2                 вартинф — grammar: "Основное склонение"
%   class_type_3                 даданф — grammar: "Основное склонение"
%   class_type_4                 очни — grammar: "нетипичные прилагательные"
%   class_type_5                 яшлу — grammar: "нетипичные прилагательные"
%   class_type_6                 ехӀсуз — grammar: "нетипичные прилагательные"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
