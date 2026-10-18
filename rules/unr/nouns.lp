% rules/unr/nouns.lp
% Mundari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2931: A Descriptive Analysis of Mundari: A Study of the structure of the Mundari language accord (1965), pages 136, 138, 140, 142, 144, 166, 167, 168, 291, 297, 305, 310
%   doc 389094: Mundari Grammar Book (2013), pages 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 26, 27, 36, 39, 71, 72, 180, 181
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   amaso_type                   amaso
%   banduk_type                  banduk
%   apu_type                     äpü
%   ala_type                     alaŋ
%   bandukan_type                bandukan
%   nouns_with_suffix_an_an_on_in_the_plural bar — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   bodoso_type                  bodoso
%   so_at_at                     bodososo — grammar: "-so/-at, -ät"
%   nouns_with_suffix_an_an_on_in_the_plural_2 boyi — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_3 buluk — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   bilili_type                  bïlïlï
%   nouns_with_suffix_an_an_on_in_the_plural_4 büt — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_5 diŋit — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   dode_type                    doꞌde
%   dili_type                    dïlï
%   duat_type                    düät
%   dude_type                    düꞌde
%   gele_type                    gele
%   nouns_with_suffix_an_an_on_in_the_plural_6 guek — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   gu_type                      gü
%   nouns_with_suffix_an_an_on_in_the_plural_7 güläm — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_8 gümät — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   gure_type                    güre
%   nouns_with_suffix_an_an_on_in_the_plural_9 güreny — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   jaku_type                    jaku
%   jame_type                    jame
%   jae_type                     jaꞌe
%   nouns_with_suffix_an_an_on_in_the_plural_10 jurak — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   jany_type                    jäny
%   jur_type                     jür
%   kadi_type                    kadi
%   nouns_with_suffix_an_an_on_in_the_plural_11 kak — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   kapiriaso_type               kapiriaso
%   kare_type                    kare
%   si                           kena — grammar: "-/-si"
%   kidi_type                    kidi
%   kido_type                    kido
%   nouns_with_suffix_an_an_on_in_the_plural_12 kileŋ — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   kili_type                    kili
%   kilu_type                    kiluŋ
%   kiro_type                    kiro
%   kia_type                     kiŋa
%   koroposo_type                koroposo
%   koyi_type                    koyi
%   koe_type                     koŋe
%   so_an_on                     kuakuaraksoso — grammar: "-so/-än, -on"
%   nouns_with_suffix_an_an_on_in_the_plural_13 kulupit — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_at_at_ot_in_the_plural kuŋu — grammar: "nouns with suffix –at, -ät, -ot in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_14 kuꞌdat — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   so_ni_in                     käbütäsoso — grammar: "-so/-ni, -ïn"
%   kaji_type                    käjï
%   kali_type                    kälï
%   karue_type                   kärüꞌe
%   kadi_type_2                  käꞌdï
%   kibar_type                   kïbär
%   kidi_type_2                  kïdï
%   nouns_with_suffix_at_at_ot_in_the_plural_2 küdü — grammar: "nouns with suffix –at, -ät, -ot in the plural form"
%   so_ni_in_2                   kürüdüso — grammar: "-so/-ni, -ïn"
%   kuu_type                     küꞌü
%   lau_type                     laꞌu
%   likiro_type                  likiro
%   likiti_type                  likiti
%   lilu_type                    liluŋ
%   ligo_type                    liŋgo
%   logelie_type                 logelie
%   lojitso_type                 lojïtso
%   lokore_type                  lokore
%   loli_type                    loli
%   lomore_type                  lomore
%   loro_type                    loro
%   nouns_with_suffix_an_an_on_in_the_plural_15 loꞌduluk — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_at_at_ot_in_the_plural_3 lürü — grammar: "nouns with suffix –at, -ät, -ot in the plural form"
%   lutek_type                   lütek
%   mar_type                     mar
%   marate_type                  marate
%   meme_type                    memeŋ
%   mere_type                    mere
%   merenye_type                 merenye
%   nouns_with_suffix_an_an_on_in_the_plural_16 meŋ — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_17 mi — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   miri_type                    miri
%   mony_type                    mony
%   nouns_with_suffix_an_an_on_in_the_plural_18 mäk — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   miri_type_2                  mïrï
%   munu_type                    münü
%   murii_type                   mürïï
%   nouns_with_suffix_an_an_on_in_the_plural_19 mürüt — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nugusu_type                  nugusu
%   nyajua_type                  nyajua
%   nouns_with_suffix_an_an_on_in_the_plural_20 nyürüt — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   onoso_type                   onoso
%   nouns_with_suffix_an_an_on_in_the_plural_21 parat — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   pata_type                    pata
%   nouns_with_suffix_an_an_on_in_the_plural_22 perek — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   peya_type                    peya
%   pada_type                    pädä
%   pari_type                    pärï
%   nouns_with_suffix_an_an_on_in_the_plural_23 pïrït — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_ii_in_the_singular_for pïrïï — grammar: "nouns with suffix –ïï in the singular form"
%   so_at_at_2                   püdïso — grammar: "-so/-at, -ät"
%   nouns_with_suffix_an_an_on_in_the_plural_24 rïŋït — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   sokare_type                  sokare
%   nouns_with_suffix_an_an_on_in_the_plural_25 süät — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   taba_type                    taba
%   nouns_with_suffix_an_an_on_in_the_plural_26 titiꞌit — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   tome_type                    tome
%   ture_type                    ture
%   tutu_type                    tutu
%   nouns_with_suffix_an_an_on_in_the_plural_27 tär — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   tulu_type                    tülü
%   so_an_on_2                   tüpso — grammar: "-so/-än, -on"
%   wale_type                    wale
%   nouns_with_suffix_an_an_on_in_the_plural_28 wor — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   so_ni_in_3                   wülüküso — grammar: "-so/-ni, -ïn"
%   wuri_type                    würï
%   yapa_type                    yapa
%   yaru_type                    yaru
%   so_at_at_3                   yïꞌdïso — grammar: "-so/-at, -ät"
%   so_at_at_4                   ürütïso — grammar: "-so/-at, -ät"
%   nouns_with_suffix_an_an_on_in_the_plural_29 üsür — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_30 ŋeꞌdep — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   ode_type                     ŋode
%   om_type                      ŋom
%   so_an_on_3                   ŋopsoso — grammar: "-so/-än, -on"
%   so_ni_in_4                   ŋäjïnäso — grammar: "-so/-ni, -ïn"
%   nouns_with_suffix_an_an_on_in_the_plural_31 ŋäüŋ — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   nouns_with_suffix_an_an_on_in_the_plural_32 ŋün — grammar: "nouns with suffix –an, -än, -on in the plural form"
%   dir_type                     ꞌdir
%   nouns_with_suffix_an_an_on_in_the_plural_33 ꞌdüŋït — grammar: "nouns with suffix –an, -än, -on in the plural form"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
