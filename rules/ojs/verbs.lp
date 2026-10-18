% rules/ojs/verbs.lp
% Cree verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389930: Semantic and Pragmatic Functions in Plains Cree Syntax (2011), pages 89, 91, 93, 95, 96, 99, 106, 108, 132, 134, 135, 138, 418, 419, 424, 438, 439, 440, 441, 450
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   mixed_set_inverse_interactions wīcih — grammar: "Mixed Set Inverse Interactions"
%   vai1_vowel_final             nipāw — grammar: "VAI1 (vowel-final)"
%   v12_n_final_usually_identified_as_vai pimisin — grammar: "V12 (n-final; usually identified as VAI)"
%   vai2_n_final                 pimisinin — grammar: "VAI2 (n-final)"
%   v13_am_final_usually_identified_as_vti_c wāpahtam — grammar: "V13 (am-final; usually identified as VTI (class 1))"
%   v2_a_k_a_vta_2_animate_participants_v21 wīcihāw — grammar: "V2 (a.k.a. VTA – 2 animate participants) / V21 (regular stems)"
%   v24_t_stems                  nāsin — grammar: "V24 (t-stems)"
%   vti_independent_order_indicative_mode wāpah — grammar: "VTI Independent Order, Indicative Mode"
%   vai_independent_order_indicative_mode wāpāso — grammar: "VAI Independent Order, Indicative Mode"
%   vta_independent_order_mixed_set_direct_i wīcih-āw — grammar: "VTA Independent Order Mixed Set Direct Interactions"
%   vta_independent_order_local_set_inverse wīcihitin — grammar: "VTA Independent Order Local Set Inverse Interactions"
%   vii_conjunct_order_indicative_mode wāpāstēk — grammar: "VII Conjunct Order, Indicative Mode"
%   vii_independent_order_indicative_mode wāpāstēw — grammar: "VII Independent Order, Indicative Mode"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
