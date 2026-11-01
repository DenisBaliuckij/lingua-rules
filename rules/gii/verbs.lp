% rules/gii/verbs.lp
% Girirra verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 10016: The Grammar of Girirra (A Lowland East Cushitic Language of Ethiopia) (2015), pages 82, 83, 136, 145, 146, 151, 155, 158, 160, 169, 170, 205, 221, 222, 224
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   roor_type                    roor, tab, un, ɗunkus ...
%   kabu_type                    k’abu
%   gadad_type                   gadad
%   gi_type                      giʃ
%   koot_type                    koot
%   dareer_type                  dareer
%   fais_type                    faɗis
%   gad_type                     gad
%   rig_type                     rig
%   riig_type                    riig
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
