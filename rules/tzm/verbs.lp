% rules/tzm/verbs.lp
% Tamazight (Central Atlas) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296244: A Reference Grammar of Tamazight (1974), pages 136, 196, 197, 217, 218, 221, 223, 224, 249, 251, 255, 262
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   bry_type                     bry
%   i_ablaut_in_the_past         bda — grammar: "i/ ablaut in the past"
%   awd_type                     awd
%   c0_0_ablauted_stems          frh — grammar: "[0:0] Ablauted Stems"
%   c0_0_ablauted_stems_2        amz — grammar: "[0:0] Ablauted Stems"
%   unablauted_stems             dawa — grammar: "Unablauted Stems"
%   svh_of_a_awn                 svawan — grammar: "SVH of A awn/"
%   qawn_type                    qawn
%   mvh_of_k4awn                 t:m'%awan — grammar: "MVH of k4awn!"
%   tuvh_of_cawn                 t:u'awan — grammar: "TuVH of /CaWn/"
%   hortatory_movement           mqawan — grammar: "Hortatory [ +Movement]"
%   t_qawan_type                 t:qawan
%   awn_type                     awn
%   c0_0_ablauted_stems_3        f:r — grammar: "[0:0] Ablauted Stems"
%   c0_0_ablauted_stems_4        fs:r — grammar: "[0:0] Ablauted Stems"
%   unablauted_stems_2           hadr — grammar: "Unablauted Stems"
%   s_type                       s
%   unablauted_stems_3           sal — grammar: "Unablauted Stems"
%   unablauted_stems_4           xtar — grammar: "Unablauted Stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
