% rules/yrk/nouns.lp
% Nenets nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388843: Самоучитель ненецкого языка (1961), pages 9, 27, 79, 83, 85, 103, 104, 110, 111, 114, 120, 136, 140, 144, 168, 173, 188, 191, 194, 195
%   doc 388844: A Grammar of Tundra Nenets (2014), pages 41, 64, 75, 83, 102, 206
%   doc 388845: Очерк грамматики ненецкого (юрако-самоедского) языка (1947), pages 75, 111, 136, 141, 142, 208, 238
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   no_type                      ŋəno
%   ii_2                         мя — grammar: "II класс, 2-я гр."
%   i                            ню — grammar: "I класс"
%   class_type                   ня — grammar: "лично-притяжательное склонение мн. числа предмета"
%   ii_1                         уэся — grammar: "II класс, 1-я гр."
%   c2                           няда — grammar: "лично-притяжательное склонение (2-е лицо мн. ч.)"
%   ti_type                      ti
%   class_type_2                 тубка, уано — grammar: "лично-притяжательное склонение"
%   class_type_3                 ты, я, ӈацекы
%   class_type_4                 вэсако — grammar: "лично-притяжательное склонение"
%   i_2                          хан — grammar: "имя I класса"
%   class_type_5                 ӈэся — grammar: "лично-притяжательное склонение мн. числа предмета"
%   ii_1_2                       вы — grammar: "II класс 1-я группа (основа на звонкий гортанный смычный)"
%   ii                           вын — grammar: "II кл."
%   class_type_6                 ту
%   ii_1_3                       ям — grammar: "II класс 1-я группа (слова на м)"
%   class_type_7                 падар
%   ii_3                         мяд — grammar: "II кл."
%   c1_ii                        нгарти — grammar: "имя 1-й группы II класса"
%   class_type_8                 нися
%   class_type_9                 ӈуда
%   ii_1_4                       въС — grammar: "II класс 1-я гр."
%   i_3                          хард — grammar: "I класс"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
