% rules/kus/nouns.lp
% Kusaal nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 183: Grammaire élémentaire du kusaal parlé au Burkina Faso (2014), pages 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 56, 57
%   doc 51192: A Grammar of Agolle Kusaal: Revised Version (2015), pages 144, 145, 229, 231, 234, 261, 314, 315
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   croisement_de_genres         pe’ʋk — grammar: "croisement de genres"
%   ba_as_singular               dàyáamma — grammar: "ba as Singular"
%   ba_as_singular_2             dìəmma, sàamma — grammar: "ba as Singular"
%   ba_as_singular_3             nàˀaba — grammar: "ba as Singular"
%   ads_type                     adɔɔs
%   albast_type                  albasɩt
%   arazak_type                  arazak
%   genre_ii                     asɩba — grammar: "genre II"
%   genre_iii                    baaga — grammar: "genre III"
%   genre_i                      ba’a — grammar: "genre I"
%   genre_iii_2                  biiya — grammar: "genre III"
%   diminutif_bila_bil           boot — grammar: "diminutif -bila/-bil"
%   baare_type                   bàˀare
%   baki_type                    bãŋki
%   genre_iv                     bãʋko — grammar: "genre IV"
%   genre_iv_2                   bõ’ogo — grammar: "genre IV"
%   classe_9_classe_10           bĩ’isire — grammar: "classe 9 / classe 10"
%   bata_type                    bɔ’ata
%   genre_i_2                    bʋntata — grammar: "genre I"
%   genre_iii_3                  bʋpɔka — grammar: "genre III"
%   genre_iii_4                  bʋraaga — grammar: "genre III"
%   genre_iv_3                   bʋraaʋgo — grammar: "genre IV"
%   genre_iii_5                  bʋŋa — grammar: "genre III"
%   diminutif_bila_bil_2         bʋʋ — grammar: "diminutif -bila/-bil"
%   genre_iii_6                  bʋʋga — grammar: "genre III"
%   genre_iv_4                   daago — grammar: "genre IV"
%   genre_ii_2                   daka — grammar: "genre II"
%   genre_i_3                    dakõore — grammar: "genre I"
%   genre_iii_7                  da’aga — grammar: "genre III"
%   genre_iii_8                  deega — grammar: "genre III"
%   genre_iv_5                   doogo — grammar: "genre IV"
%   a_ba_class                   dìˀəsa — grammar: "a|ba Class"
%   genre_ii_3                   dɛɛma — grammar: "genre II"
%   foto_type                    foto
%   genre_iv_6                   fuugo — grammar: "genre IV"
%   genre_iv_7                   gbe’ʋgo — grammar: "genre IV"
%   a_ba_class_2                 gbàn-tāra — grammar: "a|ba Class"
%   classe_9_classe_10_2         gbɩgɩmbe — grammar: "classe 9 / classe 10"
%   classe_9_classe_10_3         gelle — grammar: "classe 9 / classe 10"
%   kaye_type                    kaye
%   kodu_type                    kodu
%   genre_iii_9                  kolʋŋa — grammar: "genre III"
%   genre_i_4                    kpaara — grammar: "genre I"
%   classe_9_classe_10_4         kpã’are — grammar: "classe 9 / classe 10"
%   genre_ii_4                   kpɩ’ɩma — grammar: "genre II"
%   genre_ii_5                   kpẽema — grammar: "genre II"
%   kube_type                    kube
%   genre_iv_8                   kõogo — grammar: "genre IV"
%   a_ba_class_3                 kùɵsa — grammar: "a|ba Class"
%   genre_ii_6                   kũm — grammar: "genre II"
%   genre_ii_7                   ma — grammar: "genre II"
%   genre_iv_9                   mɔɔgo — grammar: "genre IV"
%   diminutif_bila_bil_3         naaf — grammar: "diminutif -bila/-bil"
%   genre_ii_8                   na’aba — grammar: "genre II"
%   classe_11_classe_12          nifo — grammar: "classe 11 / classe 12"
%   genre_iii_10                 niiŋa — grammar: "genre III"
%   genre_i_5                    nira — grammar: "genre I"
%   genre_iii_11                 niŋa — grammar: "genre III"
%   classe_9_classe_10_5         nɔgbãnne — grammar: "classe 9 / classe 10"
%   genre_iv_10                  nɔraaʋgo — grammar: "genre IV"
%   classe_9_classe_10_6         nɔɔre — grammar: "classe 9 / classe 10"
%   genre_i_6                    pitu — grammar: "genre I"
%   genre_ii_9                   pompɩ — grammar: "genre II"
%   genre_iv_11                  poogo — grammar: "genre IV"
%   genre_i_7                    pɔ’a — grammar: "genre I"
%   sakut_type                   sakut
%   siaare_type                  si̯àˀare
%   a_ba_class_4                 sàala — grammar: "a|ba Class"
%   genre_ii_10                  sãama — grammar: "genre II"
%   genre_i_8                    sãana — grammar: "genre I"
%   classe_9_classe_10_7         sõore — grammar: "classe 9 / classe 10"
%   genre_i_9                    sõyã — grammar: "genre I"
%   classe_11_classe_12_2        sĩfo — grammar: "classe 11 / classe 12"
%   classe_9_classe_10_8         sũmɩre — grammar: "classe 9 / classe 10"
%   genre_i_10                   sɩra — grammar: "genre I"
%   classe_9_classe_10_9         sẽembe — grammar: "classe 9 / classe 10"
%   genre_ii_11                  teebʋl — grammar: "genre II"
%   genre_iv_12                  te’ʋgo — grammar: "genre IV"
%   genre_i_11                   tõo — grammar: "genre I"
%   genre_ii_12                  tõ’osa — grammar: "genre II"
%   genre_iii_12                 tɩɩya — grammar: "genre III"
%   genre_iv_13                  vãago — grammar: "genre IV"
%   genre_iv_14                  wabʋgo — grammar: "genre IV"
%   classe_9_classe_10_10        wille — grammar: "classe 9 / classe 10"
%   genre_iii_13                 wãaŋa — grammar: "genre III"
%   diminutif_bila_bil_4         wãrɩk — grammar: "diminutif -bila/-bil"
%   wadre_type                   wādɩre
%   genre_ii_13                  yaaba — grammar: "genre II"
%   classe_9_classe_10_11        yõore — grammar: "classe 9 / classe 10"
%   classe_11_classe_12_3        yĩilʋfo — grammar: "classe 11 / classe 12"
%   classe_9_classe_10_12        yĩnne — grammar: "classe 9 / classe 10"
%   classe_11_classe_12_4        yũufo — grammar: "classe 11 / classe 12"
%   classe_11_classe_12_5        yũ’unfo — grammar: "classe 11 / classe 12"
%   genre_iv_15                  zugo — grammar: "genre IV"
%   classe_11_classe_12_6        zĩfo — grammar: "classe 11 / classe 12"
%   genre_iv_16                  zũugo — grammar: "genre IV"
%   classe_11_classe_12_7        zũ’unufo — grammar: "classe 11 / classe 12"
%   genre_i_12                   zɔɔ — grammar: "genre I"
%   genre_iii_14                 zɔɔga — grammar: "genre III"
%   genre_ii_14                  zɔ’ɔma — grammar: "genre II"
%   classe_9_classe_10_13        ɩɩlle — grammar: "classe 9 / classe 10"
% Irregular (listed in data/nouns.exceptions.tsv): kpã'ʋŋ, kukut, mɔlʋf, nu'uk, nīda, pɩɩf, sũsũf
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
