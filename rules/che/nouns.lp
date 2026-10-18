% rules/che/nouns.lp
% Chechen nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389444: Самоучитель чеченского языка (Нохчийн мотт) (2003), pages 12, 29, 37, 39, 40, 68, 83, 86, 88
%   doc 841346: Синтаксис чеченского литературного языка (1940), pages 124, 127, 219
%   doc 841352: A Grammar of Chechen (n.d.), pages 15, 25, 55
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   белхало — grammar: "Четвертое склонение"
%   class_type_2                 куьйг
%   class_type_3                 мача — grammar: "Третье склонение"
%   class_type_4                 москал — grammar: "Первое склонение"
%   class_type_5                 олхазар, базар
%   class_type_6                 пен
%   class_type_7                 гота — grammar: "Второе склонение"
%   class_type_8                 керташ — grammar: "Первое склонение"
%   class_i_ablaut               лом — grammar: "Class I - Ablaut"
%   class_type_9                 бепиг
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
