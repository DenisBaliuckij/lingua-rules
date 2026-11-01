% rules/mqs/verbs.lp
% West Makian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21216: The Makian languages and their neighbours (1982), pages 20, 21, 24, 25
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   action_verbs                 co — grammar: "Action Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
