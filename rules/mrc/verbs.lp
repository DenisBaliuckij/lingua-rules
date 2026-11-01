% rules/mrc/verbs.lp
% Maricopa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389253: Maricopa Morphology and Syntax (1980), pages 45, 71, 100, 101, 102, 103, 104, 105, 106
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   aay_m_type                   aay-m, lyuly-k
%   amel_k_type                  amel-k
%   av_k_type                    av-k
%   c_hmnyaa_k_type              c.hmnyaa-k
%   chaa_k_type                  chaa-k, daa-k
%   chen_k_type                  chen-k, yem-k
%   chew_k_type                  chew-k
%   chich_k_type                 chich-k
%   chmii_m_type                 chmii-m, kmii-m
%   chpa_m_type                  chpa-m
%   chqash_k_type                chqash-k
%   duu_m_type                   duu-m
%   haw_k_type                   haw-k
%   hshpa_k_type                 hshpa-k
%   kman_k_type                  kman-k
%   knaav_k_type                 knaav-k
%   knam_k_type                  knam-k
%   kshnay_k_type                kshnay-k
%   kuly_k_type                  kuly-k
%   kyaa_m_type                  kyaa-m, paa-m, wii-m
%   maa_m_type                   maa-m
%   man_k_type                   man-k
%   mshdi_k_type                 mshdi-k
%   nak_k_type                   nak-k
%   nmak_m_type                  nmak-m
%   nyvay_k_type                 nyvay-k
%   oh_k_type                    oh-k
%   puy_k_type                   puy-k
%   qaas_k_type                  qaas-k
%   ruv_k_type                   ruv-k
%   she_k_type                   she-k
%   shmaa_m_type                 shmaa-m
%   skyiny_k_type                skyiny-k
%   soo_k_type                   soo-k
%   tduly_m_type                 tduly-m
%   tshnyo_k_type                tshnyo-k
%   uk_k_type                    uk-k
%   uukchiish_k_type             uukchiish-k
%   uukup_m_type                 uukup-m
%   uulyesh_m_type               uulyesh-m
%   uuyey_k_type                 uuyey-k
%   vdii_k_type                  vdii-k
%   vshqwe_k_type                vshqwe-k
%   wey_k_type                   wey-k
%   yoq_k_type                   yoq-k
%   yuu_k_type                   yuu-k
%   ar_oy_k_type                 ar'oy-k
%   chaa_m_type                  chaa-m
%   hot_k_type                   hot-k
%   iima_k_type                  iima-k
%   mshray_m_type                mshray-m
%   shuupaw_m_type               shuupaw-m
%   sii_m_type                   sii-m
%   v_aw_m_type                  v'aw-m
%   v_oo_k_type                  v'oo-k
%   vtay_m_type                  vtay-m
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
