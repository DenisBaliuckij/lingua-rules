% rules/mgl/verbs.lp
% Maleu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289617: A Maleu grammar outline and text (1996), pages 5, 6, 8, 9, 14
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   gal_type                     gal
%   kan_type                     kan
%   lei_type                     lei
%   lik_type                     lik
%   maia_type                    maia
%   muga_type                    muga
%   ruk_type                     ruk
%   uavel_type                   uavel
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
