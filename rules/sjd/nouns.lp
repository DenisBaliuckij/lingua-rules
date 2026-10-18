% rules/sjd/nouns.lp
% Kildin Sami nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388178: Краткий грамматический очерк саамского языка (1985), pages 14, 16, 17, 21, 22, 31, 34, 35, 36
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   i                            кāннҍцвудт — grammar: "первое (I) склонение"
%   i_2                          кӯлль — grammar: "первое (I) склонение"
%   i_3                          кӯсс — grammar: "первое (I) склонение"
%   class_type                   пальтэсь — grammar: "Пятое склонение"
%   class_type_2                 чӣгар — grammar: "Пятое склонение"
%   class_type_3                 нызан — grammar: "Пятое склонение"
%   class_type_4                 цыза — grammar: "Четвёртое склонение"
%   class_type_5                 чӯййкэй — grammar: "Пятое склонение"
%   i_4                          нāhпь — grammar: "первое (I) склонение"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
