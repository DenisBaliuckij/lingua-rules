% rules/tdh/verbs.lp
% Thulung Rai verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 18: Aspects of the grammar of Thulung Rai: an endangered Himalayan language (2002), pages 146, 170, 173, 177, 179, 181, 182, 184, 185, 200, 206, 207
%   doc 15644: Thulung Rai (2004), pages 5, 7, 17, 18
%   doc 15646: Sketch of Thulung Grammar with three texts and a glossary (1975), pages 57, 64, 119, 153
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   stem_in_r_paradigm           kurmu — grammar: "Stem in -r paradigm"
%   stem_in_l_paradigm           mal-mu — grammar: "Stem in -l paradigm"
%   stem_in_m_and_stem_in_n_paradigms munmu, plymmu — grammar: "Stem in -m and stem in -n paradigms"
%   irregular_verbs              pomu — grammar: "irregular verbs"
%   stems_with_an_underlying_i   tsamu — grammar: "Stems with an underlying -i"
%   intransitive_verbs           jar — grammar: "intransitive verbs"
%   stem_i_with_underlying_s     lwamu — grammar: "Stem I with underlying -s"
%   bumu_type                    bumu
%   stem_in_paradigm             senmu — grammar: "Stem in -" paradigm"
%   subclass_iia                 rja-mu — grammar: "Subclass IIa"
%   bimu_type                    bimu
%   l_mu_type                    l!mu
%   intransitive_verb            onmu — grammar: "intransitive verb"
%   romu_type                    romu
%   subclass_iic                 bre-mu — grammar: "Subclass IIc"
%   gwa_mu_type                  gwa-mu
%   jal_mu_type                  jal-mu
%   rem_ben_mu_type              rem-ben-mu
%   subclass_iia_2               ro-mu — grammar: "Subclass IIa"
%   subclass_iiic                £u-mu — grammar: "Subclass IIIc"
%   dymmu_type                   dymmu
%   dzen_mu_type                 dzen-mu
%   ea_type                      ea
%   gwamu_type                   gwamu
%   hunbenmu_type                hunbenmu
%   krimmu_type                  krimmu
%   ku_type                      ku
%   l_mu_type_2                  l!-mu
%   lumu_type                    lumu
%   mi_type                      mi
%   t_u_type                     t)u
%   th_mu_type                   th#-mu
%   ts_mu_type                   ts!mu
% Irregular (listed in data/verbs.exceptions.tsv): bo-mu, bomu, bu-mu, po-mu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
