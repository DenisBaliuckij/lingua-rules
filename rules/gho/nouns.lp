% rules/gho/nouns.lp
% Ghomara Berber nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41195: A Grammar of Ghomara Berber (2015), pages 92, 93, 102, 114, 115, 119, 120, 121, 122, 124, 145, 146, 152, 154, 159, 216, 217, 233, 238, 239, 242, 243, 249
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   d_dawsas_type                d-dawsas, l-bergag, l-fellaḥ, l-xeyyaṭ ...
%   l_keddab_type                l-keddaḇ, l-mežmuɛ, l-muɛallim, l-walid ...
%   l_meyyet_type                l-meyyeṯ
%   l_muddai_type                l-muddaɛi
%   l_mellem_type                l-mɛellem
%   l_pubri_type                 l-puḇri, l-puṛẓwaẓi, l-ummi, š-šṭayṛi
%   z_zani_type                  z-zani
%   t_tub_type                   ṭ-ṭuḇ
%   d_demmal_a_type              d-demmal-a
%   d_dexxan_type                d-dexxan
%   cucc_an                      d-dheḇ — grammar: "cucc-an"
%   d_dker_type                  d-dḵeṛ
%   l_batri_type                 l-batri
%   cic_an                       l-baz — grammar: "cic-an"
%   l_bezzun_a_type              l-bezzun-a
%   l_bit_type                   l-biṯ
%   l_burg_a_type                l-buṛǧ-a
%   cic_an_2                     l-kaf — grammar: "cic-an"
%   l_kamyuna_type               l-kamyuna
%   cic_an_3                     l-kaṛ — grammar: "cic-an"
%   l_kridi_type                 l-kridi
%   l_lef_et_type                l-lefɛ-eṯ
%   cic_an_4                     l-leṭṭ-a — grammar: "cic-an"
%   l_lhem_type                  l-lḥem
%   m_derived_nouns              l-medfeɛ — grammar: "m- derived nouns"
%   m_derived_nouns_2            l-menšeṛ — grammar: "m- derived nouns"
%   m_derived_nouns_3            l-meṛfeɛ — grammar: "m- derived nouns"
%   l_mdin_a_type                l-mḏin-a
%   l_plas_a_type                l-plaṣ-a
%   l_prikanti_type              l-prikanti
%   cic_an_5                     l-qaɛ — grammar: "cic-an"
%   l_gawhar_type                l-ǧawhaṛ
%   le_bhim_a_type               le-bhim-a
%   le_bzim_type                 le-bzim
%   le_ktab_type                 le-ktaḇ
%   arabic_morphology_nouns      le-mweyyes — grammar: "Arabic-morphology nouns"
%   le_qmig_a_type               le-qmiǧ-a
%   arabic_morphology_nouns_2    le-qweyyeṣ — grammar: "Arabic-morphology nouns"
%   n_naq_a_type                 n-naq-a
%   n_nezm_a_type                n-nežm-a
%   cwacc                        n-nimiṛu — grammar: "cwacc"
%   n_nsib_type                  n-nsiḇ
%   n_nsib_a_type                n-nsiḇ-a
%   s_sayf_type                  s-sayf
%   cwacc_2                      s-saḇeɛ — grammar: "cwacc"
%   s_sekk_a_type                s-sekk-a
%   s_sellum_type                s-sellum
%   s_sint_a_type                s-sint-a
%   s_srir_type                  s-srir
%   s_sbi_a_type                 s-sḇiɣ-a
%   t_teksi_type                 t-teksi
%   t_telem_type                 t-teɛlem
%   cucc_an_2                    t-tris — grammar: "cucc-an"
%   feminine_diminutive_nouns    ta-flilen-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_2  ta-freyyex-t — grammar: "feminine diminutive nouns"
%   ta_fuk_t_type                ta-fuḵ-t
%   feminine_diminutive_nouns_3  ta-fšiqeṛ-t — grammar: "feminine diminutive nouns"
%   ta_la_type                   ta-la
%   feminine_diminutive_nouns_4  ta-lfifeṭ-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_5  ta-mnigež-t — grammar: "feminine diminutive nouns"
%   apophonic_plurals            ta-muggas-t — grammar: "apophonic plurals"
%   feminine_diminutive_nouns_6  ta-nqeyyel-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_7  ta-qzizen-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_8  ta-rbeyy-et — grammar: "feminine diminutive nouns"
%   apophonic_plurals_2          ta-rekkal-t — grammar: "apophonic plurals"
%   ta_rtiw_t_type               ta-rtiw-t
%   ta_sif_t_type                ta-sif-t
%   feminine_diminutive_nouns_9  ta-wfeyyel-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_10 ta-wneyyef-t — grammar: "feminine diminutive nouns"
%   feminine_diminutive_nouns_11 ta-wqiqef-t — grammar: "feminine diminutive nouns"
%   ta_ylal_t_type               ta-ylal-t
%   ta_yt_type                   ta-yt
%   feminine_diminutive_nouns_12 ta-zreyyef-t — grammar: "feminine diminutive nouns"
%   apophonic_plurals_3          ta-žellab-t — grammar: "apophonic plurals"
%   ta_il_t_type                 ta-ɣil-t
%   feminine_diminutive_nouns_13 ta-ḥbib-et — grammar: "feminine diminutive nouns"
%   apophonic_plurals_4          ta-ḵemmar-t — grammar: "apophonic plurals"
%   apophonic_plurals_5          ta-ḵewwaṛ-t — grammar: "apophonic plurals"
%   ta_kna_type                  ta-ḵna
%   apophonic_plurals_6          ta-ṛappaṣ-t — grammar: "apophonic plurals"
%   feminine_diminutive_nouns_14 ta-ṛpipeṣ-t — grammar: "feminine diminutive nouns"
%   ta_za_type                   ta-ẓa
%   ti_lk_et_type                ti-lk-et
%   ti_rg_et_type                ti-rg-et
%   ti_dda_type                  ti-ḍda̱̣
%   ti_tt_type                   ti-ṭṭ
%   non_affix_nouns              xalti — grammar: "non-affix nouns"
%   cwacc_3                      z-zamel — grammar: "cwacc"
%   cic_an_6                     z-zaž — grammar: "cic-an"
%   z_zebul_type                 z-zeɛbul
%   z_zif_type                   z-zif
%   s_sahed_type                 š-šaheḏ
%   s_seff_a_type                š-šeff-a
%   s_ser_a_type                 š-šeɛṛ-a
%   cwacc_4                      š-šiṭan — grammar: "cwacc"
%   cucc_an_3                    š-šɛaṛ — grammar: "cucc-an"
%   non_affix_nouns_2            žeddi — grammar: "non-affix nouns"
%   non_affix_nouns_3            ɛemmi — grammar: "non-affix nouns"
%   non_affix_nouns_4            ɛemṯi — grammar: "non-affix nouns"
%   d_dayf_type                  ḍ-ḍayf
%   d_dell_type                  ḍ-ḍell
%   r_ras_type                   ṛ-ṛas
%   r_rezz_a_type                ṛ-ṛeẓẓ-a
%   r_rbi_type                   ṛ-ṛḇiɛ
%   s_sab_a_type                 ṣ-ṣaḇ-a
%   s_sebbat_type                ṣ-ṣebbaṭ
%   s_srir_type_2                ṣ-ṣṛiṛ
%   cwacc_5                      ṭ-ṭayfuṛ — grammar: "cwacc"
%   cwacc_6                      ṭ-ṭaḥun-a — grammar: "cwacc"
%   cic_an_7                     ṭ-ṭaṣ-a — grammar: "cic-an"
%   t_terf_type                  ṭ-ṭeṛf
%   z_zerb_type                  ẓ-ẓeṛb
%   z_zermut_a_type              ẓ-ẓeṛmuṭ-a
% Irregular (listed in data/nouns.exceptions.tsv): a-ftiweṯ, a-mṭiweṭ, ta-smimer-t, ta-ɣweyyel-t
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
