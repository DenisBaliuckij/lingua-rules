% rules/heb/nouns.lp
% Modern Hebrew nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67768: Easing Into Modern Hebrew Grammar: A User-friendly Reference and Exercise Book (Vol. I) (n.d.), pages 60, 391, 396, 441, 460, 466, 481, 492, 494, 512, 521, 524, 536, 543, 552, 576, 577, 586, 591, 592
%   doc 67881: Modern Hebrew Structure (1978), pages 48, 49, 95, 96, 100, 162, 163
%   doc 67888: Predicate Formation in the Verbal System of Modern Hebrew (1987), pages 19, 20
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   unmarked_type_of_noun        sus — grammar: "unmarked type of noun"
%   class_type                   אות
%   pakid_type                   pakid
%   davar_type                   davar
%   pitardn_type                 pitardn
%   class_type_2                 אוניברסיטה
%   class_type_3                 בית
%   class_type_4                 דלת
%   class_type_5                 דת
%   class_type_6                 זית
%   class_type_7                 חולצה
%   class_type_8                 חנונית
%   class_type_9                 כפית
%   class_type_10                כת
%   class_type_11                כתובת
%   class_type_12                מחבת
%   class_type_13                מקלחת
%   class_type_14                ספרייה
%   class_type_15                צוות
%   class_type_16                צומת
%   class_type_17                קשת
%   class_type_18                רשת
%   class_type_19                שבת
%   class_type_20                שירות
% Irregular (listed in data/nouns.exceptions.tsv): talmid 'student
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
