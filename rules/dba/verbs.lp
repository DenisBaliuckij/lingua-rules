% rules/dba/verbs.lp
% Bangime verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 84591: A Grammar of Bangiime (2010), pages 27, 47, 68
%   doc 84592: A Grammar of Bangime (2018), pages 135, 250, 251, 257, 260, 276, 281, 323, 324, 325, 326, 397, 423
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   active_rv_verbs_llhlll_perfective_1_rv màà, jàà, pàà, twàà ... — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   wore_type                    wòrè
%   cvcv                         kùwⁿɔ̀ — grammar: "CvCv"
%   gaa_type                     gàà
%   pirna_type                   pìrⁿà
%   active_rv_verbs_llhlll_perfective_1_rv_2 mùwⁿɔ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_3 nìjɛ̀, sìjɛ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_4 pùjɛ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_5 pùwɔ̀, sùwɔ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_6 tùɥɛ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_7 ŋìjⁿɛ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   active_rv_verbs_llhlll_perfective_1_rv_8 ŋùɥⁿɛ̀ — grammar: "Active RV-verbs (LLHLLL, perfective-1 -rv)"
%   perfective_2_l_toned_in_plural_perfectiv bítù — grammar: "perfective-2 L-toned in plural (perfective-2 elsewhere L-toned)"
%   perfective_2_m_toned_in_plural_perfectiv búú — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere L-toned)"
%   cvncv                        dèŋgò — grammar: "CvNCv"
%   cvncv_2                      dòŋgò — grammar: "CvNCv"
%   cciji_or_ccii                gwìjì, kwìjì — grammar: "CCiji (or CCii)"
%   cvncv_3                      jèndò — grammar: "CvNCv"
%   perfective_2_m_toned_in_plural_perfectiv_2 jí-jé — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere M-toned)"
%   cvncv_4                      kùmbò — grammar: "CvNCv"
%   perfective_2_m_toned_in_plural_perfectiv_3 mííndì — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere M-toned)"
%   nuguju_type                  nùgùjù, pìjùwù, sìmbìjɛ̀
%   cvncv_5                      sòndò — grammar: "CvNCv"
%   perfective_2_m_toned_in_plural_perfectiv_4 twáá — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere L-toned)"
%   cvncv_6                      tèmbò — grammar: "CvNCv"
%   bin_da_type                  bīn-dā, dīn-dā
%   bun_di_type                  būn-dī
%   cvcv_with_truncated_perfective_2 jàwⁿɔ̀ — grammar: "CvCv with truncated perfective-2"
%   miindi_type                  mīīndī
%   perfective_2_m_toned_in_plural_perfectiv_5 búúⁿ — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere M-toned)"
%   perfective_2_l_toned_in_plural_perfectiv_2 já-ẁ — grammar: "perfective-2 L-toned in plural (perfective-2 elsewhere L-toned)"
%   perfective_2_l_toned_in_plural_perfectiv_3 tí-ẁ — grammar: "perfective-2 L-toned in plural (perfective-2 elsewhere L-toned)"
%   cvcv_2                       tùgì — grammar: "CvCv"
%   cvcv_3                       tùwì — grammar: "CvCv"
%   perfective_2_m_toned_in_plural_perfectiv_6 ʒííⁿ — grammar: "perfective-2 M-toned in plural (perfective-2 elsewhere M-toned)"
% Irregular (listed in data/verbs.exceptions.tsv): gòmbè, nūū
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
