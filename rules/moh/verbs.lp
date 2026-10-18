% rules/moh/verbs.lp
% Mohawk verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38713: Le mohawk (2007), pages 2, 4
%   doc 74121: Topics in Mohawk Grammar (1988), pages 178
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   rarathens_type               raráthens
%   katshokwas_type              katshókwas
%   k_a_ris_type                 k-á:ris
%   nuhwe_n_type                 nuhwe?n
%   yvtho_type                   yvtho
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
