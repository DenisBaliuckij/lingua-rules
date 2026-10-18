% rules/ess/nouns.lp
% Central Siberian Yupik nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389509: A Grammatical Sketch of Siberian Yupik Eskimo as spoken on St. Lawrence Island, Alaska (1979), pages 51
%   doc 853851: Материалы по языку азиатских эскимосов (1949), pages 50, 57, 58, 89, 231, 233, 238, 239, 242, 245
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   тауіга
%   class_type_2                 аіа
%   class_type_3                 пиііхка
%   class_type_4                 таг'нух
%   class_type_5                 гуйгу
%   class_type_6                 аг’нак — grammar: "с окончанием на к'"
%   class_type_7                 коууік
%   class_type_8                 таг’нух’ак
%   class_type_9                 ігпщ
%   class_type_10                уйк
%   class_type_11                ігй
%   class_type_12                іуа
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
