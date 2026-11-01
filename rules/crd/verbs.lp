% rules/crd/verbs.lp
% Coeur d'Alene verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389214: Coeur d'Alene (1938), pages 170, 171
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   intransitive_completive      xds-t — grammar: "Intransitive Completive"
%   dk_n_type                    dk'^n
%   gwitc_type                   gwitc
%   hm_xil_type                  hm-xil
%   intransitive_completive_2    x^dt'-p — grammar: "Intransitive Completive"
%   nitc_type                    nitc
%   t_ap_stcdnt_type             t'ap-stcdnt
%   xds_type                     xds
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
