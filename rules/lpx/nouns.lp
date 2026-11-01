% rules/lpx/nouns.lp
% Lopit nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296243: Lopit Grammar Book (2014), pages 9, 10, 11, 12, 13, 14, 15, 16, 19, 21, 22, 45, 48, 51, 152
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   batak_type                   batak
%   bel_type                     bel, ciang
%   fetek_type                   fetek
%   haddeti_type                 haddeti, halati
%   hame_type                    hame
%   molong_type                  molong
%   morwo_type                   morwo
%   balu_type                    balu
%   bolorong_type                bolorong
%   bongo_type                   bongo
%   buhu_type                    buhu
%   bula_type                    bula
%   busuk_type                   busuk
%   cengi_type                   cengi
%   ciwali_type                  ciwali
%   demi_type                    demi
%   donge_type                   donge
%   dorong_type                  dorong
%   facan_type                   facan
%   farai_type                   farai
%   fere_type                    fere
%   fofongi_type                 fofongi
%   fuher_type                   fuher
%   fwara_type                   fwara
%   goro_type                    goro
%   gus_type                     gus
%   habu_type                    habu
%   hafialai_type                hafialai
%   hajangati_type               hajangati
%   hamuhe_type                  hamuhe
%   hanasi_type                  hanasi
%   hangeri_type                 hangeri
%   hanyahanyai_type             hanyahanyai
%   harasi_type                  harasi
%   hari_type                    hari
%   harie_type                   harie
%   hatteli_type                 hatteli
%   hauwe_type                   hauwe
%   hidotiti_type                hidotiti
%   hinyomoti_type               hinyomoti
%   hiwai_type                   hiwai
%   hiyeni_type                  hiyeni
%   hofitti_type                 hofitti
%   hofwo_type                   hofwo
%   hoito_type                   hoito
%   holong_type                  holong
%   holorong_type                holorong
%   honye_type                   honye
%   hoo_type                     hoo
%   hosehe_type                  hosehe
%   hoto_type                    hoto
%   huro_type                    huro
%   icet_type                    icet
%   igem_type                    igem
%   igolo_type                   igolo
%   ihuma_type                   ihuma
%   ikarrak_type                 ikarrak
%   ikat_type                    ikat
%   ingotit_type                 ingotit
%   ipotit_type                  ipotit
%   isio_type                    isio
%   jati_type                    jati
%   kebu_type                    kebu
%   kori_type                    kori
%   kurufat_type                 kurufat
%   ledis_type                   ledis
%   lefidik_type                 lefidik
%   leime_type                   leime
%   lemini_type                  lemini
%   letiri_type                  letiri
%   lewa_type                    lewa
%   leyiri_type                  leyiri
%   lobongi_type                 lobongi
%   mangat_type                  mangat
%   monye_type                   monye
%   monyiti_type                 monyiti
%   monyomijiti_type             monyomijiti
%   moring_type                  moring
%   morroti_type                 morroti
%   moti_type                    moti
%   munu_type                    munu
%   muro_type                    muro
%   ngabura_type                 ngabura
%   ngadief_type                 ngadief
%   ngidony_type                 ngidony
%   nyongoti_type                nyongoti
%   raboloi_type                 raboloi
%   risa_type                    risa
%   sohoti_type                  sohoti
%   suhe_type                    suhe
%   tafar_type                   tafar
%   tafeng_type                  tafeng
%   tamot_type                   tamot
%   togoli_type                  togoli
%   tutunyo_type                 tutunyo
%   tutur_type                   tutur
%   yafa_type                    yafa
%   yani_type                    yani
%   yoni_type                    yoni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
