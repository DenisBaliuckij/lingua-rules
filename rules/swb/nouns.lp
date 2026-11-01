% rules/swb/nouns.lp
% Shimaore nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9820: Manuel Grammatical de Shimaore (n.d.), pages 28, 29, 31, 33, 34, 43, 44, 48, 49, 50, 54, 67, 68, 69, 81, 150, 151, 152, 176
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   classe_5_classe_6            Duktera — grammar: "Classe 5 / Classe 6"
%   classe_5_classe_6_2          Fundi — grammar: "Classe 5 / Classe 6"
%   classe_9_classe_2            Mama — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_2          Mamatiti — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_3          Mamaɓole — grammar: "Classe 9 / Classe 2"
%   moro_type                    Moro
%   mu_wa_classes_1_2            Mudjeni — grammar: "MU-/WA- (Classes 1 / 2)"
%   mu_wa_classes_1_2_2          Mudjeremani — grammar: "MU-/WA- (Classes 1 / 2)"
%   mu_wa_classes_1_2_3          Mudzade — grammar: "MU-/WA- (Classes 1 / 2)"
%   mu_wa_classes_1_2_4          Mufalme — grammar: "MU-/WA- (Classes 1 / 2)"
%   mu_wa_classes_1_2_5          Mufarantsa — grammar: "MU-/WA- (Classes 1 / 2)"
%   mufenesi_type                Mufenesi
%   muframpe_type                Muframpe
%   mufumo_type                  Mufumo
%   muhare_type                  Muhare
%   mu_wa_classes_1_2_6          Muhindi — grammar: "MU-/WA- (Classes 1 / 2)"
%   muho_type                    Muho
%   muhogo_type                  Muhogo
%   mu_mi_classes_3_4            Muhono — grammar: "MU-/MI- (Classes 3/4)"
%   mu_wa_classes_1_2_7          Mujuhu — grammar: "MU-/WA- (Classes 1 / 2)"
%   mukandra_type                Mukandra
%   mukataba_type                Mukataba
%   mukiri_type                  Mukiri
%   mukoa_type                   Mukoɓa
%   mulango_type                 Mulango
%   mulima_type                  Mulima
%   mulimu_type                  Mulimu
%   mulingo_type                 Mulingo
%   mulizima_type                Mulizima
%   mumanga_type                 Mumanga
%   munadzi_type                 Munadzi
%   munara_type                  Munara
%   mundru_type                  Mundru
%   mupaka_type                  Mupaka
%   mupango_type                 Mupango
%   mupapaya_type                Mupapaya
%   mupira_type                  Mupira
%   mura_type                    Mura
%   muraha_type                  Muraha
%   muro_type                    Muro
%   murundra_type                Murundra
%   musafara_type                Musafara
%   mushia_type                  Mushia
%   muswaki_type                 Muswaki
%   mutsuzi_type                 Mutsuzi
%   muvumo_type                  Muvumo
%   muwa_type                    Muwa
%   muuyu_type                   Muɓuyu
%   muwa_type_2                  Muɓwa
%   mwaha_type                   Mwaha
%   classe_9_classe_2_4          Mwanamtsa — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_5          Mwananya — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_6          Mwandzani — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_7          Mwaraɓu — grammar: "Classe 9 / Classe 2"
%   mwenge_type                  Mwenge
%   classe_9_classe_2_8          Mwenyeji — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_9          Mwenyewe — grammar: "Classe 9 / Classe 2"
%   mwesi_type                   Mwesi
%   mwezi_type                   Mwezi
%   classe_9_classe_2_10         Mwidzi — grammar: "Classe 9 / Classe 2"
%   mwili_type                   Mwili
%   mwiri_type                   Mwiri
%   mwitsi_type                  Mwitsi
%   shahidi_type                 Shahidi
%   shefu_type                   Shefu
%   shemedji_type                Shemedji
%   classe_7_classe_8_shi_zi     Shia — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_2   Shiazi — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_3   Shifuɓa — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_4   Shiga — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_5   Shijavu — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_6   Shikandre — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_7   Shikombe — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_8   Shino — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_9   Shinyama — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_10  Shio — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_11  Shireo — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_12  Shirere — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   classe_7_classe_8_shi_zi_13  Shiɓaɓa — grammar: "Classe 7 / Classe 8 (SHI-/ZI-)"
%   shofera_type                 Shofera
%   genre_n                      aeroplani — grammar: "Genre N-"
%   genre_n_2                    barji — grammar: "Genre N-"
%   genre_ma                     dukutera — grammar: "Genre MA-"
%   cl_5_cl_6                    gari — grammar: "Cl 5 / Cl 6"
%   genre_ma_2                   gato — grammar: "Genre MA-"
%   k_h                          kaa — grammar: "K -> H"
%   k_h_2                        kafiri — grammar: "K -> H"
%   k_h_3                        kara — grammar: "K -> H"
%   k_h_4                        kaɓuri — grammar: "K -> H"
%   k_h_5                        kofu — grammar: "K -> H"
%   k_h_6                        koko — grammar: "K -> H"
%   k_h_7                        kosa — grammar: "K -> H"
%   genre_n_3                    lapitali — grammar: "Genre N-"
%   genre_n_4                    likoli — grammar: "Genre N-"
%   cl_3_cl_4                    muhono — grammar: "Cl 3 / Cl 4"
%   cl_1_cl_2                    mutru — grammar: "Cl 1 / Cl 2"
%   cl_9_cl_10                   nguo — grammar: "Cl 9 / Cl 10"
%   genre_ma_3                   polisi — grammar: "Genre MA-"
%   cl_7_cl_8                    shiri — grammar: "Cl 7 / Cl 8"
%   genre_ma_4                   shofera — grammar: "Genre MA-"
%   genre_n_5                    taksi — grammar: "Genre N-"
%   trango_type                  trango
%   trindri_type                 trindri
%   trumbo_type                  trumbo
%   trundra_type                 trundra
%   genre_n_6                    zarde — grammar: "Genre N-"
%   classe_5_classe_6_3          Ɓakoko — grammar: "Classe 5 / Classe 6"
%   classe_9_classe_2_11         Ɓaɓa — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_12         Ɓaɓatiti — grammar: "Classe 9 / Classe 2"
%   classe_9_classe_2_13         Ɓaɓaɓole — grammar: "Classe 9 / Classe 2"
%   classe_5_classe_6_4          Ɓwana — grammar: "Classe 5 / Classe 6"
%   classe_5_classe_6_5          Ɓweni — grammar: "Classe 5 / Classe 6"
%   d_l                          ɗago — grammar: "D -> L"
%   d_l_2                        ɗalao — grammar: "D -> L"
%   d_l_3                        ɗandzi — grammar: "D -> L"
%   d_l_4                        ɗangadzo — grammar: "D -> L"
%   d_l_5                        ɗavu — grammar: "D -> L"
%   d_l_6                        ɗaɓa — grammar: "D -> L"
%   d_l_7                        ɗomo — grammar: "D -> L"
%   d_l_8                        ɗundri — grammar: "D -> L"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
