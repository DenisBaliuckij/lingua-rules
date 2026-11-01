% rules/cld/nouns.lp
% Aramaic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389758: The Jewish Neo-Aramaic Dialect of Amәdya (2011), pages 71, 72, 107, 109, 113, 135, 139, 151, 197, 200, 201, 237, 243
%   doc 389764: The Neo-Aramaic Dialect of Alqosh (2003), pages 133, 186, 193, 194, 207, 209, 210, 284, 287, 288, 289, 293, 294, 306
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ta_to_e                      xemmarta — grammar: "//-Ta// to -e"
%   alalta_type                  alalta
%   awaa                         amma — grammar: "-awāθa"
%   aqla_type                    aqla
%   ta_to_e_2                    armota — grammar: "//-Ta// to -e"
%   axona_type                   axona
%   baba_type                    baba
%   baxta_type                   baxta
%   ta_to_e_3                    bašelta — grammar: "//-Ta// to -e"
%   beda_type                    beda
%   bedra_type                   bedra
%   bikare_type                  bikāre
%   burmase_type                 burmāše
%   awaa_2                       bāba — grammar: "-awāθa"
%   awaa_3                       bāra — grammar: "-awāθa"
%   awaa_4                       bεθa — grammar: "-awāθa"
%   bdra_type                    bәdra
%   brka_type                    bәrka
%   bza_type                     bәzʾa
%   awaa_5                       dara — grammar: "-awāθa"
%   awaa_6                       dεra — grammar: "-awāθa"
%   ta_to_e_4                    enwiθa — grammar: "//-Ta// to -e"
%   ace_reduplication_of_final_radical eppa — grammar: "-āCe (reduplication of final radical)"
%   ace_reduplication_of_final_radical_2 feña — grammar: "-āCe (reduplication of final radical)"
%   garena_type                  garenθa
%   garia_type                   gariθa
%   gudania_type                 gudaniθa
%   gumbalta_type                gumbalta
%   ace_reduplication_of_final_radical_3 guppa — grammar: "-āCe (reduplication of final radical)"
%   gupta_type                   gupta
%   gutta_type                   gut̠ta̠
%   glla_type                    gәlla
%   gnta_type                    gәnt̠a
%   gsra_type                    gәšra
%   itota_type                   itota
%   izalta_type                  izalta
%   kaleba_type                  kalebθa
%   karta_type                   karta
%   kawa_type                    kawa
%   koenta_type                  koðenta
%   ta_to_e_5                    kubabta — grammar: "//-Ta// to -e"
%   kuceka_type                  kučekθa
%   ta_to_e_6                    kālekθa — grammar: "//-Ta// to -e"
%   lema_type                    leʾma
%   loqanta_type                 loqanta
%   awaa_7                       lεle — grammar: "-awāθa"
%   lbba_type                    lәbba
%   maemta_type                  maemta
%   magelta_type                 magelta
%   magela_type                  magelθa
%   mata_type                    mat̠a
%   ace_reduplication_of_final_radical_4 mella — grammar: "-āCe (reduplication of final radical)"
%   mita_type                    mðita
%   maa_type                     māθa
%   nunta_type                   nunta
%   nuqba_type                   nuqba
%   naa_type                     nāθa
%   palga_type                   palga
%   ace_reduplication_of_final_radical_5 parča — grammar: "-āCe (reduplication of final radical)"
%   pata_type                    pat̠a
%   paa_type                     pāθa
%   ta_to_e_7                    pēlavta — grammar: "//-Ta// to -e"
%   pmma_type                    pәmma
%   psra_type                    pәsra
%   qadamta_type                 qadamta
%   qana_type                    qana
%   qania_type                   qaniθa
%   awaa_8                       qara — grammar: "-awāθa"
%   qdala_type                   qdala
%   qeta_type                    qeṭa
%   rabbania_type                rabbaniθa
%   sepa_type                    sepθa
%   sota_type                    sota
%   susta_type                   susta
%   awaa_9                       sūsa — grammar: "-awāθa"
%   tara_type                    tarʾa
%   ace_reduplication_of_final_radical_6 telpa — grammar: "-āCe (reduplication of final radical)"
%   xabra_type                   xabra
%   ta_to_e_8                    xabušta — grammar: "//-Ta// to -e"
%   xalta_type                   xalta
%   xata_type                    xat̠a
%   ta_to_e_9                    xeiθa — grammar: "//-Ta// to -e"
%   xema_type                    xema
%   ta_to_e_10                   xermanta — grammar: "//-Ta// to -e"
%   xmarta_type                  xmarta
%   xmata_type                   xmat̠a
%   awaa_10                      xora — grammar: "-awāθa"
%   xora_type                    xorθa
%   xulma_type                   xulma
%   awaa_11                      xāla — grammar: "-awāθa"
%   xaa_type                     xāθa
%   ace_reduplication_of_final_radical_7 xūwe — grammar: "-āCe (reduplication of final radical)"
%   xtna_type                    xәtna
%   ta_to_e_11                   yabešta — grammar: "//-Ta// to -e"
%   yemma_type                   yemma
%   yoma_type                    yoma
%   ymma_type                    yәmma
%   zemmarta_type                zemmarta
%   ace_reduplication_of_final_radical_8 zeqa — grammar: "-āCe (reduplication of final radical)"
%   aerta_type                   āerta
%   cappe_type                   čappe
%   coka_type                    čoka
%   awaa_12                      ēða — grammar: "-awāθa"
%   gulama_type                  ġulama
%   sabta_type                   šabt̠a
%   ta_to_e_12                   šakkalta — grammar: "//-Ta// to -e"
%   sarexa_type                  šarexθa
%   ace_reduplication_of_final_radical_9 ševla — grammar: "-āCe (reduplication of final radical)"
%   sivana_type                  šivāna
%   ace_reduplication_of_final_radical_10 šopa — grammar: "-āCe (reduplication of final radical)"
%   sura_type                    šura
%   swota_type                   šwota
%   awaa_13                      šēra — grammar: "-awāθa"
%   armlta_type                  ʾarmәlt̠a
%   atra_type                    ʾat̠ra
%   axa_type                     ʾaxa
%   eda_type                     ʾeda
%   ena_type                     ʾena
%   ida_type                     ʾida
%   istada_type                  ʾistada
%   urxa_type                    ʾuṛxa
%   na_type                      εna
%   slota_type                   ṣḷot̠a
%   tura_type                    ṭura
%   tlla_type                    ṭәlla
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
