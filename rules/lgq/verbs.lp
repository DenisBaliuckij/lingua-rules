% rules/lgq/verbs.lp
% Logba verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11327: A Grammar of Logba (Ikpana) (2008), pages 59, 60, 79, 112, 166, 167
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   z_type                       zɔ́
%   fo_type                      fó
%   ye_type                      yé
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
