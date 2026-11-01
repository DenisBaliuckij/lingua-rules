% rules/chr/verbs.lp
% Cherokee verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8735: A Grammar of North Carolina Cherokee (1979), pages 118, 120, 123, 124, 133
%   doc 91095: A Reference Grammar of Oklahoma Cherokee (2008), pages 112, 241, 436
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_e                      hne — grammar: "class E"
%   class_b5                     nohski — grammar: "Class B5"
%   class_c3                     ati:htha — grammar: "Class C3"
%   class_d3                     ahse — grammar: "Class D3"
%   class_d2                     yv — grammar: "Class D2"
%   set_a                        steeliha — grammar: "Set A"
%   oolihka_type                 oolihka
%   class_c2                     ye:?wska — grammar: "Class C2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
