% rules/muz/nouns.lp
% Mursi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 163: A grammar of Mursi, a Nilo-Saharan language (2020), pages 151, 280, 281, 282, 283, 285, 287, 289, 295, 297, 302, 303, 305, 334, 377, 496, 501, 576
%   doc 894928: Mursi Grammar (n.d.), pages 6, 9
%   doc 942373: A Grammar of Mursi: A Nilo-Saharan Language of Ethiopia (2021), pages 129, 257, 258, 259, 260, 262, 263, 264, 266, 267, 269, 271, 273, 278, 279, 309, 310, 316, 317, 320, 323, 471, 477, 553
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   b_type                       bɛ̀
%   oli_type                     òlí
%   hiri_type                    hírí
%   partial_suppletion           tɔ̀ŋɔ̀ — grammar: "partial suppletion"
%   balagaraj_type               bàlàgáráj
%   category_viii_cin            bàŋkà — grammar: "category viii: -čin"
%   category_i                   bár-í — grammar: "category i"
%   batiri_type                  bátírí
%   o_taking_nouns               bì — grammar: "-o taking nouns"
%   singulative_system           bílbíló-j — grammar: "singulative system"
%   category_i_2                 bírín-í — grammar: "CATEGORY I"
%   a_taking_nouns               bóhùn — grammar: "-a taking nouns"
%   kinship_nouns                bóʃù — grammar: "kinship nouns"
%   category_i_3                 bóʃú — grammar: "CATEGORY I"
%   kinship_nouns_2              dàdà — grammar: "kinship nouns"
%   dami_type                    dàmì
%   daha_type                    dáhá
%   dol_e_type                   dòl-è
%   kinship_nouns_3              dòŋò — grammar: "kinship nouns"
%   dor_i_type                   dór-í
%   dugu_type                    dùgú
%   a_taking_nouns_2             dùmàɲ — grammar: "-a taking nouns"
%   singulative                  dùrùmò — grammar: "singulative"
%   singulative_system_2         dùrùmò-j — grammar: "singulative system"
%   durum_ej_type                dúrúm-èj
%   o_taking_nouns_2             dɔ̀wuŋ — grammar: "-o taking nouns"
%   dwun_type                    dɔ̀wùn
%   category_viii_cin_2          gàhà — grammar: "category viii: -čin"
%   gali_oj_type                 gàlìʃ-òj
%   garc_u_type                  gàrč-ù
%   o_taking_nouns_3             gàwuł — grammar: "-o taking nouns"
%   gawul_type                   gàwùl
%   category_viii_cin_3          gàìsà — grammar: "category viii: -čin"
%   category_iii                 gás-à — grammar: "CATEGORY III"
%   gig_ej_type                  gìg-èj
%   giro_type                    gìròŋ
%   tone_marking                 gìrŋàj — grammar: "tone marking"
%   gi_type                      gíŋ-ɛ̀
%   category_viii_cin_4          gò — grammar: "category viii: -čin"
%   kinship_nouns_4              gòdóná — grammar: "kinship nouns"
%   category_i_4                 gùnàtè-j — grammar: "CATEGORY I"
%   category_ii                  gùʃúr-ɔ́ — grammar: "CATEGORY II"
%   o_taking_nouns_4             gúsí — grammar: "-o taking nouns"
%   category_i_5                 gúsús-ì — grammar: "CATEGORY I"
%   gukac_ui_type                gúŋkàč-ùì
%   category_vii_a_o_singular_versus_i_plura gɔ — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vi_implied_by_context_of_preced ha — grammar: "CATEGORY VI (implied by context of preceding items a/b)"
%   category_vii_a_o_singular_versus_i_plura_2 hár-té — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_viii_cin_5          háɗá — grammar: "category viii: -čin"
%   category_xi_so_and_si        híní — grammar: "category xi: -so and -sí"
%   category_ii_2                hóh-ú — grammar: "CATEGORY II"
%   hoj_type                     hój
%   category_xi_so_and_si_2      hólí — grammar: "category xi: -so and -sí"
%   category_ix_i_oi_e_nj_singular_versus_na hùl-è — grammar: "category ix: {-i, oi, -e, -ɔ, -nɛ̀j} (singular) versus {-na, -ɲá [-íɲá], -ia} (plural)"
%   category_vii_a_o_singular_versus_i_plura_3 ji — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   kinship_nouns_5              jànɛ̀n — grammar: "kinship nouns"
%   category_vii_a_o_singular_versus_i_plura_4 jìr-ɔ̀ — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vii_a_o_singular_versus_i_plura_5 ka — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vii_a_o_singular_versus_i_plura_6 ku — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_i_6                 kàbì — grammar: "CATEGORY I"
%   kinship_nouns_6              kàkà — grammar: "kinship nouns"
%   category_viii_e_singular_versus_a_i_plur kàlúg-é — grammar: "category viii: -e [-ɛ] (singular) versus {-a, -i} (plural)"
%   category_i_7                 kààr-ì — grammar: "CATEGORY I"
%   o_taking_nouns_5             kállí — grammar: "-o taking nouns"
%   tone_marking_2               kìlòì — grammar: "tone marking"
%   kilic_oi_type                kílíč-óì
%   o_taking_nouns_6             kíriń — grammar: "-o taking nouns"
%   kirin_type                   kírín
%   singulative_system_3         kírɔ́ŋó-ì — grammar: "singulative system"
%   singulative_system_4         kísíŋó-j — grammar: "singulative system"
%   kitt_type                    kítt-ɔ́
%   ki_o_type                    kíɗ-ó
%   kon_u_type                   kòn-ù
%   type_i                       kònù — grammar: "Type I"
%   category_vii_ca              kòrmì — grammar: "category vii: -ča"
%   ko_ej_type                   kòɗ-èj
%   category_ii_3                kómór-ú — grammar: "CATEGORY II"
%   kono_type                    kónò
%   category_viii_e_singular_versus_a_i_plur_2 kùdùh-é — grammar: "category viii: -e [-ɛ] (singular) versus {-a, -i} (plural)"
%   category_vii_a_o_singular_versus_i_plura_7 kùr-ó — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   singulative_system_5         kùrúdó-j — grammar: "singulative system"
%   category_i_8                 kútúsɛ́n-ì — grammar: "CATEGORY I"
%   kl_u_type                    kɔ̀l-ù
%   category_vii_a_o_singular_versus_i_plura_8 kɛ̀ŋ — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vii_a_o_singular_versus_i_plura_9 kɛ̀ŋ-ɔ̀ — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   a_taking_nouns_3             kɛ́dɛ́m — grammar: "-a taking nouns"
%   category_ix_i_oi_e_nj_singular_versus_na_2 kɛ́rɛ́-j — grammar: "category ix: {-i, oi, -e, -ɔ, -nɛ̀j} (singular) versus {-na, -ɲá [-íɲá], -ia} (plural)"
%   a_taking_nouns_4             làlàŋ — grammar: "-a taking nouns"
%   category_vii_ca_2            làràŋè — grammar: "category vii: -ča"
%   singulative_2                lìwá — grammar: "singulative"
%   singulative_system_6         lìwá-j — grammar: "singulative system"
%   category_viii_cin_6          lòjà — grammar: "category viii: -čin"
%   category_i_9                 lóg — grammar: "CATEGORY I"
%   ludum_type                   lùdùm
%   category_i_10                lús-ì — grammar: "category i"
%   category_i_11                lɛ̀tán-ì — grammar: "CATEGORY I"
%   category_vii_a_o_singular_versus_i_plura_10 mu — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   o_taking_nouns_7             màdi — grammar: "-o taking nouns"
%   madi_type                    màdì
%   kinship_nouns_7              màmà — grammar: "kinship nouns"
%   category_ii_4                màrʃàr-ì — grammar: "CATEGORY II"
%   ma_oj_type                   máɗ-ój
%   mis_type                     mìs
%   category_vii_a_o_singular_versus_i_plura_11 mùm-ɔ̀ — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vii_a_o_singular_versus_i_plura_12 mùɲá-tòj — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_iii_2               múd-à — grammar: "CATEGORY III"
%   singulative_system_7         múrɗá-j — grammar: "singulative system"
%   a_taking_nouns_5             mɔ̀r — grammar: "-a taking nouns"
%   category_i_12                mɔ̀ʤɔ̀là-j — grammar: "CATEGORY I"
%   mdr_type                     mɛ̀dɛ̀r-ɛ̀
%   type_iii                     mɛ̀dɛ̀rɛ̀ — grammar: "Type III"
%   kinship_nouns_8              mɛ̀rɛ̀ — grammar: "kinship nouns"
%   category_xi_so_and_si_3      nèbì — grammar: "category xi: -so and -sí"
%   category_vii_a_o_singular_versus_i_plura_13 rɔ — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   type_iii_2                   rɔ̀sɔ̀ — grammar: "Type III"
%   category_vii_a_o_singular_versus_i_plura_14 sa — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_vii_a_o_singular_versus_i_plura_15 sáb-á — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   sai_type                     sáì
%   category_i_13                sìl — grammar: "CATEGORY I"
%   category_vii_ca_3            sìrò — grammar: "category vii: -ča"
%   category_ii_5                sììr-ɔ̀ — grammar: "CATEGORY II"
%   singulative_3                sísá — grammar: "singulative"
%   singulative_system_8         sísá-j — grammar: "singulative system"
%   su_type                      sú
%   category_viii_cin_7          súrá — grammar: "category viii: -čin"
%   category_vii_a_o_singular_versus_i_plura_16 tu — grammar: "CATEGORY VII: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_ix_i_oi_e_nj_singular_versus_na_3 tíhá-ì — grammar: "category ix: {-i, oi, -e, -ɔ, -nɛ̀j} (singular) versus {-na, -ɲá [-íɲá], -ia} (plural)"
%   category_iii_3               tíl-á — grammar: "CATEGORY III"
%   a_taking_nouns_6             tírtír — grammar: "-a taking nouns"
%   tori_type                    tórí
%   category_vii_a_o_singular_versus_i_plura_17 tùg-ɔ̀ — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   category_i_14                tùì — grammar: "CATEGORY I"
%   tur_type                     túr-ɛ́
%   o_taking_nouns_8             túruŋ — grammar: "-o taking nouns"
%   turu_type                    túrúŋ
%   category_i_15                tɔ́lɔ́ɓɛ́ — grammar: "CATEGORY I"
%   category_i_16                tɛ̀r-ì — grammar: "CATEGORY I"
%   singulative_4                tɛ̀wá — grammar: "singulative"
%   singulative_system_9         tɛ̀wá-ì — grammar: "singulative system"
%   category_viii_cin_8          wàrà — grammar: "category viii: -čin"
%   wel_u_type                   wèl-ù
%   abb_o_type                   àbb-ò
%   category_i_17                àh-ì — grammar: "category i"
%   ams_aj_type                  àms-àj
%   astamari_type                àstàmàrì
%   category_iii_4               àčùg-à — grammar: "CATEGORY III"
%   arr_o_type                   árr-ó
%   category_vi_implied_by_context_of_preced_2 átála — grammar: "CATEGORY VI (implied by context of preceding items a/b)"
%   category_vii_a_o_singular_versus_i_plura_18 átálá-té — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   au_type                      áú
%   category_ix_i_oi_e_nj_singular_versus_na_4 áʃá-ì — grammar: "category ix: {-i, oi, -e, -ɔ, -nɛ̀j} (singular) versus {-na, -ɲá [-íɲá], -ia} (plural)"
%   category_i_18                èrí — grammar: "CATEGORY I"
%   o_taking_nouns_9             érésí — grammar: "-o taking nouns"
%   i_o_type                     íɗ-ó
%   category_i_19                úlʃ-ì — grammar: "CATEGORY I"
%   singulative_5                úɲó — grammar: "singulative"
%   singulative_system_10        úɲó-j — grammar: "singulative system"
%   camun_type                   čàmùn
%   category_i_20                čár — grammar: "CATEGORY I"
%   singulative_system_11        čòɗúgá-j — grammar: "singulative system"
%   cll_oj_type                  čɔ̀ll-òj
%   singulative_system_12        čɔ̀llɔ̀-j — grammar: "singulative system"
%   category_i_21                čɛ́rɛ́dɛ́n-ì — grammar: "CATEGORY I"
%   category_viii_cin_9          ŋò — grammar: "category viii: -čin"
%   category_ii_6                ŋɔ̀dɔ̀r-ì — grammar: "CATEGORY II"
%   kinship_nouns_9              ŋɔ̀nà — grammar: "kinship nouns"
%   category_ii_7                ŋɔ̀r-ɔ̀ — grammar: "CATEGORY II"
%   kinship_nouns_10             ŋɔ̀sɔ̀sì — grammar: "kinship nouns"
%   singulative_6                ɓàlóg — grammar: "singulative"
%   singulative_system_13        ɓàlóg-ì — grammar: "singulative system"
%   ir_e_type                    ɓír-é
%   category_vi_implied_by_context_of_preced_3 ɓólóŋo — grammar: "CATEGORY VI (implied by context of preceding items a/b)"
%   category_vii_a_o_singular_versus_i_plura_19 ɓólóŋó-ì — grammar: "category vii: {-a, -ɔ[-o]} (singular) versus -i (plural)"
%   ukk_oi_type                  ɓùkk-òi
%   singulative_7                ɓùrá — grammar: "singulative"
%   singulative_system_14        ɓùrá-j — grammar: "singulative system"
%   category_iii_5               ɓɔ́č-à — grammar: "CATEGORY III"
%   category_viii_e_singular_versus_a_i_plur_3 ɗɔ — grammar: "CATEGORY VIII: -e [-ɛ] (singular) versus {-a, -i} (plural)"
%   category_iii_6               ɗɔ́ŋ-à — grammar: "CATEGORY III"
%   k_type                       ɗɛ́kɛ̀
%   category_iii_7               ɛ́l-à — grammar: "CATEGORY III"
%   category_i_22                ɲàb-ì — grammar: "CATEGORY I"
%   al_u_type                    ʃàl-ù
%   o_taking_nouns_10            ʃèbèl — grammar: "-o taking nouns"
%   i_type                       ʃí
%   o_taking_nouns_11            ʃígiń — grammar: "-o taking nouns"
%   igin_type                    ʃígín
%   singulative_8                ʃòwá — grammar: "singulative"
%   singulative_system_15        ʃòà-ì — grammar: "singulative system"
%   kinship_nouns_11             ʃúúnɛ́ — grammar: "kinship nouns"
%   category_i_23                ʤààr-ì — grammar: "CATEGORY I"
%   kinship_nouns_12             ʤɔ̀ɔ̀nɛ́ — grammar: "kinship nouns"
% Irregular (listed in data/nouns.exceptions.tsv): kèj, kìɔ̀, mɛ̀ɛǹ, mɛ̀ɛ̀n, sìɔ̀, érmì
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
