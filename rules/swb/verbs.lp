% rules/swb/verbs.lp
% Shimaore verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9820: Manuel Grammatical de Shimaore (n.d.), pages 28, 29, 31, 33, 34, 43, 44, 48, 49, 50, 54, 67, 68, 69, 81, 150, 151, 152, 176
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   udjiona_type                 udjiona
%   uendra_type                  uendra
%   ufanya_type                  ufanya
%   ukia_type                    ukia
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
