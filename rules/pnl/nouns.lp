% rules/pnl/nouns.lp
% Paleni (pale) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289785: A grammar of Paleni (Samic/Gur family, Burkina Faso) (2026), pages 53, 73, 74, 75, 76, 107, 108, 109, 111, 156, 157, 160
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   na_y_gender                  bànàŋkúù-nā-nā — grammar: "nā/yɛ̄ gender"
%   ka_y_gender                  báá-tì-kā-nā — grammar: "kā/yɛ̄ gender"
%   belen_na_na_type             bélén-nā-nā
%   bokoboko_na_type             bòkòbòkō-nā
%   botol_na_na_type             bótól-nā-nā
%   labial_velar_kp_e_ablauted_plurals_palat bā-kpà-nā — grammar: "labial velar kp; E-ablauted plurals palatalize"
%   cii_see_na_type              cíì-sèē-nā
%   nonpalatalizing_singular_with_ka fááká-nā — grammar: "nonpalatalizing; singular with ka"
%   feen_sa_na_type              féén-sá-nā
%   fu_na_na_type                fú-ná-nā
%   fulan_na_na_type             fúlán-nā-nā
%   furu_sa_na_type              fúrú-sá-nā
%   palatalizing_singular_with_ku fúúŋkù-nā — grammar: "palatalizing; singular with ku"
%   s_gender                     fɛ̀kɛ̀-fɛ̀kɛ̄-nā — grammar: "Ø/sɛ̄ gender"
%   kpan_na_na_type              kpán-nā-nā
%   minor_genders_with_r_plural  kpéé-bé-nā — grammar: "Minor genders with -rɛ̄- plural"
%   kacile_na_na_type            kàcìlé-ná-nā
%   palatalizing_singular_with_ku_2 kàmàŋ-kù-nā — grammar: "palatalizing; singular with ku"
%   s_gender_2                   kàn-nàkà-pò-nā — grammar: "Ø/sɛ̄ gender"
%   kappa_na_type                kàppà-nā
%   ka_see_na_type               ká-sèē-nā
%   s_gender_3                   káŋkáá-nā — grammar: "Ø/sɛ̄ gender"
%   kaa_ba_na_type               kāā-bā-nā
%   kl_na_na_type                kɔ̀lɔ́-ná-nā
%   li_be_type                   lí-bé
%   li_sem_po_na_type            lí-sèm-pò-nā
%   li_ye_na_type                lí-yé-nā
%   lii_felekee_na_type          líí-fèlèkèē-nā
%   lii_kaa_na_na_type           líí-kàà-nā-nā
%   lii_sem_po_na_type           líí-sèm-pò-nā
%   lii_see_na_type              líí-sèē-nā
%   labial_velar_kp_e_ablauted_plurals_palat_2 lòkòmàŋkpà-nā — grammar: "labial velar kp; E-ablauted plurals palatalize"
%   nonpalatalizing_singular_with_ka_2 mbàràmàŋkà-nā — grammar: "nonpalatalizing; singular with ka"
%   ma_r_gender                  mànsàà-mā-nā — grammar: "mā/rɛ̄ gender"
%   sa_r_gender                  máá-sá-nā — grammar: "sā/rɛ̄ gender"
%   ma_r_gender_2                mísí-má-nā — grammar: "mā/rɛ̄ gender"
%   na_pi_ye_na_type             ná-pí-yé-nā
%   nonpalatalizing_singular_with_ka_3 nákákà-nā — grammar: "nonpalatalizing; singular with ka"
%   sa_r_gender_2                námá-sá-nā — grammar: "sā/rɛ̄ gender"
%   nuun_ni_be_na_type           núún-nì-bē-nā
%   nuun_tu_na_na_type           núún-tú-ná-nā
%   na_kpiye_na_type             nāŋ-kpíyé-nā
%   na_kpiye_na_type_2           nāŋ-kpīyē-nā
%   na_cun_na_na_type            nāɲ-cún-ná-nā
%   na_ca_na_type                nāɲ-cā-nā
%   paraa_type                   páráá
%   ko_s_gender                  pìyé-tùù-kō-nā — grammar: "kō/sɛ̄ gender"
%   pisi_be_type                 písí-bē
%   s_gender_4                   píyé-nā — grammar: "Ø/sɛ̄ gender"
%   s_gender_5                   pò-nā — grammar: "Ø/sɛ̄ gender"
%   pl_na_na_type                pɛ́l-nā-nā
%   sansaa_na_type               sànsàā-nā
%   s_gender_6                   sénnéé-nā — grammar: "Ø/sɛ̄ gender"
%   see_be_na_type               séé-bé-nā
%   see_na_type                  séé-nā
%   si_be_type                   sí-bé
%   s_gender_7                   sínfàā-nā — grammar: "Ø/sɛ̄ gender"
%   sinan_na_na_type             sínán-nā-nā
%   sii_ke_na_type               sīī-kē-nā
%   s_laa_na_type                sɔ̀-làā-nā
%   sb_na_na_type                sɛ́bɛ́-nā-nā
%   taari_na_na_type             tààrí-nā-nā
%   s_gender_8                   tééléé-nā — grammar: "Ø/sɛ̄ gender"
%   ke_ye_gender                 tíí-ké-nā — grammar: "kē/yē gender"
%   na_y_gender_2                tòmàtíì-nā-nā — grammar: "nā/yɛ̄ gender"
%   tuku_sa_na_type              túkú-sā-nā
%   tuu_ba_na_type               túú-bá-nā
%   tuu_sa_na_type               túú-sá-nā
%   tukusim_piye_na_type         tūkūsìm-pìyē-nā
%   tukusi_ca_na_type            tūkūsìɲ-cà-nā
%   war_na_na_type               wár-nā-nā
%   s_gender_9                   wáràm-pò-nā — grammar: "Ø/sɛ̄ gender"
%   sa_r_gender_3                wáán-sā-nā — grammar: "sā/rɛ̄ gender"
%   s_gender_10                  wóló-làā-nā — grammar: "Ø/sɛ̄ gender"
%   nonpalatalizing_singular_with_ka_4 wùrùkà-nā — grammar: "nonpalatalizing; singular with ka"
%   ke_ye_gender_2               wú-kó-nā — grammar: "kē/yē gender"
%   wun_zampiya_na_type          wún-zàmpìyā-nā
%   ke_ye_gender_3               wūrū-kō-nā — grammar: "kē/yē gender"
%   wl_b_na_type                 wɛ̄lɛ̄-bɛ̄-nā
%   yampin_na_na_type            yàmpín-nā-nā
%   ka_y_gender_2                yì-kā-nā — grammar: "kā/yɛ̄ gender"
%   yoon_na_na_type              yóón-nā-nā
%   jfaa_na_na_type              ɲ̀jɔ́fàá-ná-nā
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
