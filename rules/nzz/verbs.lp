% rules/nzz/verbs.lp
% Nanga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289588: A Grammar of Nanga (Dogon language family, Mali) (2016), pages 227, 244, 246, 250, 251, 255, 313, 316, 317
%   doc 296411: A Grammar of Nanga (2010), pages 215, 216, 228, 229, 230, 236, 237, 238, 239, 252, 310, 314, 390
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   stative                      èwò — grammar: "Stative"
%   quoted_prohibitive_verb_ending_in_non_hi ńné, gùró, mònjúró, tóró ... — grammar: "Quoted prohibitive (verb ending in non-high vowel)"
%   yi_type                      yǐ
%   ba_ri_type                   bǎ:rí
%   m_ndi_type                   mɔ̌:ndí
%   nuyn_type                    núyⁿ
%   tmbi_type                    tɛ́mbí, tímbí
%   go_type                      gǒ
%   perfective_participles       kárⁿí — grammar: "perfective participles"
%   yg_type                      yɔ́gɔ̀
%   imperfective                 ≡bɛ — grammar: "imperfective"
%   imperfective_participles_stem_ends_in_i bɛ̀gírí — grammar: "imperfective participles (stem ends in i)"
%   gmbi_type                    gɔ̀mbí
%   g_rni_type                   gɛ̌:rⁿí
%   quoted_prohibitive_verb_ending_in_non_hi_2 ká, dɔ̌, kɔ́ — grammar: "Quoted prohibitive (verb ending in non-high vowel)"
%   kmirni_type                  kɛ́mírⁿí
%   ye_type                      yě
%   ndi_type                     ńdí
%   baya_type                    bàyà, gìsè, gò-ndò, tàŋà-ndà ...
%   go_type_2                    gò, yè
%   quoted_prohibitive_verb_ending_in_non_hi_3 jě — grammar: "Quoted prohibitive (verb ending in non-high vowel)"
%   kuwo_m_type                  kùwò-mɛ̀, ǹnɛ̀
%   quoted_prohibitive_verb_ending_in_non_hi_4 núyⁿí — grammar: "Quoted prohibitive (verb ending in non-high vowel)"
%   dagiri_type                  dàgírí
%   dwi_type                     dɛ̀wí
%   pigire_type                  pígíré
%   stems_with_only_high_vowels  súmírⁿí — grammar: "stems with only high vowels"
%   stems_with_only_high_vowels_2 íŋgírí — grammar: "stems with only high vowels"
%   bindo_type                   bíndò
%   disiye_type                  dìsíyé
%   di_se_type                   dǐ:sé
%   cv_ci_mediopassive           dǔ:-yí — grammar: "Cv:Ci mediopassive"
%   dw_type                      dɛ̌w
%   go_type_3                    gô
%   ga_rni_type                  gǎ:rⁿí
%   girni_type                   gɔ̀ŋírⁿí
%   joriye_type                  jòríyé
%   ji_type                      jɔ̀ŋí
%   koyo_m_type                  kóyó-mɔ̂
%   cvci_and_cvcci               kúrⁿí — grammar: "CvCi and CvCCi"
%   k_si_type                    kɔ́:sí
%   kmbi_type                    kɛ́mbí
%   ligise_type                  lígísé
%   la_ri_type                   lǎ:rí
%   mandi_type                   màndí
%   mara_gi_type                 màrá-gí
%   cv_ci_underived              mǎ:ndí — grammar: "Cv:Ci underived"
%   cvci_and_cvcci_2             nàmbí — grammar: "CvCi and CvCCi"
%   nai_type                     náŋí
%   cvci_and_cvcci_3             nùŋí — grammar: "CvCi and CvCCi"
%   n_type                       nɔ̌
%   cvci_and_cvcci_4             págí — grammar: "CvCi and CvCCi"
%   pi_n_rna_type                pí:ⁿ-rⁿà
%   pugusi_type                  púgúsí
%   tari_type                    tárí
%   tai_type                     táŋí
%   cvci_and_cvcci_5             tíŋí — grammar: "CvCi and CvCCi"
%   woro_gi_type                 wòró-gí
%   yo_ro_type                   yǒ:ró
%   yg_type_2                    yɔ̀gɔ́
%   yg_type_3                    yɔ́gɔ̂
%   perfective_participles_2     yɛ̀gɛ́ — grammar: "perfective participles"
%   ili_ri_type                  ìlí-rí
%   stems_with_all_high_vowels_in_nonfinal_s írí — grammar: "Stems with all high vowels in nonfinal syllables"
%   iri_yi_type                  írí-yí
%   nno_type                     ńnô
%   cvci_and_cvcci_6             ɔ́njí — grammar: "CvCi and CvCCi"
%   wa_type                      ɛ́wâ
%   w_type                       ɛ́wɛ́
%   cv_ci_underived_2            ɲǎ:rⁿí — grammar: "Cv:Ci underived"
% Irregular (listed in data/verbs.exceptions.tsv): nǔyⁿ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
