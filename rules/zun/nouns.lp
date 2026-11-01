% rules/zun/nouns.lp
% Zuni nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 24631: Zuni Language Learning Manual (1974), pages 57, 60, 62, 63, 70, 71
%   doc 389084: Zuni Grammar (1965), pages 60
%   doc 389085: Zuni (1934), pages 84, 87, 89, 90, 93, 98, 102, 113
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_5                      bonne — grammar: "Class 5"
%   class_4                      dayanne — grammar: "Class 4"
%   class_1                      de'le — grammar: "Class 1"
%   class_3                      domme — grammar: "Class 3"
%   class_4_2                    ebissenrre — grammar: "Class 4"
%   class_1_2                    he'ie — grammar: "Class 1"
%   class_4_3                    hu'chibonne — grammar: "Class 4"
%   class_2                      kemme — grammar: "Class 2"
%   class_1_3                    ketle — grammar: "Class 1"
%   class_5_2                    kunne — grammar: "Class 5"
%   class_4_4                    ladanne — grammar: "Class 4"
%   class_2_2                    lamme — grammar: "Class 2"
%   class_1_4                    mi'le — grammar: "Class 1"
%   class_5_3                    molre — grammar: "Class 5"
%   class_1_5                    morle — grammar: "Class 1"
%   class_5_4                    mutet — grammar: "Class 5"
%   class_1_6                    natle — grammar: "Class 1"
%   class_5_5                    not'e — grammar: "Class 5"
%   class_4_5                    oshhrnne — grammar: "Class 4"
%   class_1_7                    sa'ie — grammar: "Class 1"
%   class_2_3                    samme — grammar: "Class 2"
%   class_5_6                    shilte — grammar: "Class 5"
%   class_5_7                    wop'e — grammar: "Class 5"
%   class_4_6                    yalanne — grammar: "Class 4"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
