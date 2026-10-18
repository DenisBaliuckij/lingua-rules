% rules/ank/verbs.lp
% Goemai verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44695: A Grammar of Goemai (2011), pages 193, 388, 389
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   d_ong_type                   d'ong
%   d_u_type                     d'u
%   dum_type                     dum
%   fyer_type                    fyer
%   gep_type                     gep
%   k_oon_type                   k'oon
%   kyap_type                    kyap
%   ru_type                      rU
%   t_type                       t
%   tap_type                     tap
%   twaam_type                   twaam
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
