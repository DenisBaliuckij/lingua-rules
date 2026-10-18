% rules/hyw/nouns.lp
% Western Armenian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 924611: A Textbook of Modern Western Armenian (1977), pages 18, 44, 45, 46, 162, 168, 260
%   doc 924613: Western Armenian for the English-speaking World: A Contrastive Approach (2012), pages 32, 92, 95, 116, 135, 136, 158, 180, 185, 218, 222, 223, 265, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 367, 368, 369, 370
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   աշակերտ
%   declension                   անկիւն, անկում — grammar: "-ութիւն Declension"
%   declension_2                 ծով, մուկ, Ժամ — grammar: "-ո ւ Declension"
%   nj_declension                հոգի — grammar: "-nj Declension"
%   declension_3                 մանուկ — grammar: "-ա ն Declension"
%   declension_4                 սեղան — grammar: "-ի declension"
%   declension_5                 բարութիւն — grammar: "-ութիւն Declension"
%   declension_6                 գարուն — grammar: "-ա ն Declension"
%   declension_7                 քաղաք — grammar: "-Է Declension"
%   declensiotl                  հայր — grammar: "-•/» Declensiotl"
%   declension_8                 խաղալկլ) — grammar: "-ո ւ Declension"
%   declension_9                 սիրել — grammar: "-ո ւ Declension"
%   nj_declension_2              Աստուած — grammar: "-nj Declension"
% Irregular (listed in data/nouns.exceptions.tsv): անձինր, ծնողք, մարդիկ, որդիր, տիկնայք, տղաք
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
