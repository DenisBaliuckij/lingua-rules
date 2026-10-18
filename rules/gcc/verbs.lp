% rules/gcc/verbs.lp
% Mali (Baining) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289723: Mali (Baining) grammar: a language of the East New Britain Province, Papua New Guinea (2011), pages 75, 77, 97, 103, 108, 161
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   type_a                       dēn — grammar: "Type A"
%   type_a_2                     tes — grammar: "Type A"
%   type_b                       bang — grammar: "Type B"
%   type_b_2                     dong — grammar: "Type B"
%   type_b_3                     gum — grammar: "Type B"
%   type_b_4                     kēlep — grammar: "Type B"
%   type_b_5                     prap — grammar: "Type B"
%   type_b_6                     thoret — grammar: "Type B"
%   type_b_7                     tēchen — grammar: "Type B"
%   type_b_8                     valing — grammar: "Type B"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
