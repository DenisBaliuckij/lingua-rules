% rules/kwu/verbs.lp
% Kwakum verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 55961: Grammaire du Kwakum / A grammar of Kwakum (2018), pages 137, 239, 248, 249
%   doc 289730: A grammar of Kwakum (2018), pages 239, 248, 249
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   c                            bà — grammar: "C"
%   c_2                          d — grammar: "C"
%   c_3                          gw — grammar: "C"
%   c_4                          ʃ — grammar: "C °"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
