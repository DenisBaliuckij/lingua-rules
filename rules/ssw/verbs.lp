% rules/ssw/verbs.lp
% Swati verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48460: Description de la langue swati — BANTOU S43 — Grammaire et lexique (volume 2) (1996), pages 173, 174, 199, 210, 212
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   buta_type                    bûta
%   bala_type                    bâla
% Irregular (listed in data/verbs.exceptions.tsv): kûbà
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
