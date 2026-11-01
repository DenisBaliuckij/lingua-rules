% rules/shi/verbs.lp
% Tachelhit verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 853373: Manuel de conjugaison de l’amazighe (2012), pages 27, 29, 30, 31, 33, 35, 36, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 62, 63, 64, 65, 67, 69, 71, 73, 82, 86
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   type_19                      ⵙⵙⵉⵡⴹ — grammar: "Type 19"
%   type_5                       ⴷⴷⵓⴽⴽⵍ — grammar: "Type 5"
%   type_18                      ⵉⵙⴷⵉⴷ — grammar: "Type 18"
%   type_2                       ⵟⵜⴼ — grammar: "Type 2: ⵟⵜⴼ"
%   type_11                      ⴰⴳⵔ — grammar: "Type 11"
%   type_16                      ⴼⵙⵓⵙ — grammar: "Type 16"
%   type_14                      ⵍⵙ — grammar: "Type 14"
%   type_20                      ⵎⵍ — grammar: "Type 20: ⵎⵍ"
%   type_21                      ⵙⵍⵍ — grammar: "Type 21"
%   type_9                       ⵥⵥⵓ — grammar: "Type 9: ⵥⵥⵓ"
%   type_24                      ⴰⴼ — grammar: "Type 24: ⴰⴼ"
%   type_4                       ⴳⵎⵔ — grammar: "Type 4"
%   type_23                      ⴳⵏ — grammar: "Type 23"
%   type_12                      ⴳⵏⵓ — grammar: "Type 12"
%   type_17                      ⵇⵇⵉⵎ — grammar: "Type 17"
%   type_1                       ⵔⵎⵙ — grammar: "Type 1"
%   type_7                       ⵙⴷⵓⵇⵇⵔ — grammar: "Type 7"
%   type_8                       ⵙⵎⵙⴰⵙⴰ — grammar: "Type 8"
%   type_15                      ⵙⵙⴼⵔⵓ — grammar: "Type 15"
%   type_10                      ⵙⵙⵉⵙⵏ — grammar: "Type 10"
%   type_22                      ⵙⵙⵍⵙ — grammar: "Type 22"
%   type_13                      ⵙⵙⵏⴷⵓ — grammar: "Type 13"
%   type_6                       ⴼⵔⴼⵔ — grammar: "Type 6"
%   class_type                   ⵜⵜⴳⴰⵍⵍⴰ
%   class_type_2                 ⵜⵜⵉⵔⵉ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
