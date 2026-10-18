% rules/yrk/verbs.lp
% Nenets verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388843: Самоучитель ненецкого языка (1961), pages 9, 27, 79, 83, 85, 103, 104, 110, 111, 114, 120, 136, 140, 144, 168, 173, 188, 191, 194, 195
%   doc 388844: A Grammar of Tundra Nenets (2014), pages 41, 64, 75, 83, 102, 206
%   doc 388845: Очерк грамматики ненецкого (юрако-самоедского) языка (1947), pages 75, 111, 136, 141, 142, 208, 238
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ii                           подерцъ — grammar: "II тип спряжения"
%   ii_2                         уамзъ — grammar: "II тип спряжения"
%   ii_3                         хадасъ — grammar: "II тип спряжения"
%   iii                          массъ — grammar: "III тип спряжения"
%   class_type                   илесь
%   i                            манзарась — grammar: "I тип спряжения"
%   ii_4                         толасъ — grammar: "II тип спряжения"
%   iii_2                        тёресъ — grammar: "III тип спряжения"
%   class_type_2                 янгго
%   reflexive_conjugation        te — grammar: "reflexive conjugation"
%   transitive_verb              xada — grammar: "transitive verb"
%   third_conjugation_type       масана — grammar: "third conjugation type"
% Irregular (listed in data/verbs.exceptions.tsv): nʹi, ta, to, xəya, ŋa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
