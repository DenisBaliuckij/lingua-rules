% rules/wam/verbs.lp
% Wampanoag verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388555: An Introduction to Wampanoag Grammar (2000), pages 12, 13, 15, 43, 49, 50, 62
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   tiib_objective               putakh — grammar: "TIIb objective"
%   transitive_inanimate_class_3_t_i_3_absol meech — grammar: "Transitive Inanimate class 3 (T I 3) Absolute"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
