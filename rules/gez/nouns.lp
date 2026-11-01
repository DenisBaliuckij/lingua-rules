% rules/gez/nouns.lp
% Ge'ez nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28906: Basics of Ancient Ethiopic: A Complete Grammar, Workbook, and Lexicon (2022), pages 43, 45, 84, 113, 153, 166, 201, 202, 211, 212, 223, 224, 234, 235, 242, 248, 249, 250
%   doc 28927: Ethiopic Grammar (1893), pages 378
%   doc 93114: Ge'ez: Classical Ethiopic (1993), pages 15, 16
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inner_plural_ac_c_ac_t       Tos — grammar: "Inner plural {?aC,C,aC,t}"
%   case_and_state               arwe — grammar: "Case and State"
%   case_and_state_2             golfo — grammar: "Case and State"
%   case_and_state_3             nolawi — grammar: "Case and State"
%   case_and_state_4             nossoha — grammar: "Case and State"
% Irregular (listed in data/nouns.exceptions.tsv): Mr\, kH
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
