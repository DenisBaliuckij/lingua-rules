% rules/chu/verbs.lp
% Old Church Slavonic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79441: Staroslavenska riječ: Gramatika starocrkvenoslavenskoga jezika (2014), pages 81, 100, 129, 130
%   doc 92938: Introduzione alla lingua paleoslava (2007), pages 145, 161, 193, 203, 274, 276, 277, 278, 280, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291
%   doc 289620: Hrammatiki slavenskija pravilnoe syntagma (Kirchenslavische Grammatik) (1974), pages 55, 57, 61, 69, 82, 96, 122, 132, 202, 209
%   doc 389281: Handbook of Old Church Slavonic, Part I: Old Church Slavonic Grammar (1959), pages 71, 77, 82, 112, 114, 116, 125, 132, 145, 182, 183, 184, 188, 191, 197, 198, 201, 204, 205, 206, 210, 214
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dati_type                    dati
%   verbs_of_conjugations_i_ii_and_v ha^ujt — grammar: "Verbs of conjugations I, II, and V"
%   coniugazione_dei_verbi_tematici_con_tema æ¢ati — grammar: "Coniugazione dei verbi tematici con tema del presente in -je-"
%   class_type                   бѣгати
%   coniugazione_dei_verbi_tematici_con_tema_2 plakati — grammar: "Coniugazione dei verbi tematici con tema del presente in -je-"
%   tematici_con_tema_del_presente_in_ne dvig¢ti — grammar: "tematici con tema del presente in -ne-"
%   hvaliti_type                 hvaliti, prositì
%   coniugazione_dei_verbi_tematici_con_tema_3 s)pati — grammar: "Coniugazione dei verbi tematici con tema del presente in -i-"
%   coniugazione_dei_verbi_tematici_con_tema_4 v:rovati — grammar: "Coniugazione dei verbi tematici con tema del presente in -je-"
%   pasoyati_type                pasoyati
%   tematici_con_tema_del_presente_in_ne_2 stati — grammar: "tematici con tema del presente in -ne-"
%   tematici_con_tema_del_presente_in_e vesti — grammar: "tematici con tema del presente in -e-"
%   coniugazione_dei_verbi_tematici_con_tema_5 glagolati — grammar: "Coniugazione dei verbi tematici con tema del presente in -je-"
%   hoditi_type                  hoditi
%   tematici_con_tema_del_presente_in_ne_3 mi¢ti — grammar: "tematici con tema del presente in -ne-"
%   nepravilni_glagoli_i         byti — grammar: "nepravilni glagoli (I)"
%   bhth_type                    bhth
%   rp_kth_type                  rp-kTH
%   class_type_2                 рѣхъ
%   class_type_3                 бѣхъ
%   class_type_4                 имѣти
%   fourth_conjugation           aioati — grammar: "fourth conjugation"
%   jasti_type                   jasti
%   tematici_con_tema_del_presente_in_e_2 plouti — grammar: "tematici con tema del presente in -e-"
%   class_type_5                 стани
%   bha_bx_type                  BHA-bx^
%   sigmatic_aorist              BpaTHXTi — grammar: "Sigmatic aorist"
%   new_aorist                   HecoxTi — grammar: "New Aorist"
%   kphmaaxi_type                KpHMaaxi^
%   kphmaxti_type                KpHMaxTi
%   sigmatic_aorist_2            naoyXTv — grammar: "Sigmatic Aorist"
%   naoyth_type                  naoyth
%   class_type_6                 вкы — grammar: "Причастіе трегубо (едественное)"
%   heckaxt_type                 HecKaxT^
%   sigmatic_aorist_3            hact^ — grammar: "Sigmatic Aorist"
%   naok_fcaxi_type              naoK-fcaxi^
%   fourth_conjugation_2         aiobiti — grammar: "fourth conjugation"
%   sigmatic_aorist_4            atoBHXi^ — grammar: "Sigmatic aorist"
%   caiiiujaaxns_type            caiiiujaaxns^
%   dvigno_ti_type               dvigno˛ti
%   dvi_ti_type                  dviɡ¢\ti
%   moliti_type                  moliti
%   nesti_type                   nesti
%   nositi_type                  nositi
%   znati_type                   znati
%   esti_type                    ¢esti
%   ositi_type                   ¢ositi
%   bkpaaxi_type                 BKpaaxi^
%   bh_type                      bh
%   delati_type                  delati
%   new_aorist_2                 dioroxTi — grammar: "New Aorist"
%   dvignuti_type                dvignuti
%   nkh_taxii_type               nKH-taxii
%   sob_kaxt_type                soB'kaxT^
%   sigmatic_aorist_5            H-fccO — grammar: "Sigmatic Aorist"
%   bpath_type                   bpath
%   first_conjugation            HeceT'b — grammar: "FIRST CONJUGATION"
%   fifth_conjugation_athematic_verbs b-baik — grammar: "FIFTH CONJUGATION (ATHEMATIC VERBS)"
%   fourth_conjugation_3         vedeti, videti — grammar: "fourth conjugation"
%   sigmatic_aorist_6            Alp-fcCTTi) — grammar: "Sigmatic Aorist"
%   caiiiujaaxti_type            caiiiujaaxTi
%   sigmatic_aorist_7            BbpdXT^ — grammar: "Sigmatic Aorist"
%   verbs_of_conjugations_iii_and_iv aioaAUJT-H — grammar: "Verbs of conjugations III and IV"
%   aioro_type                   aioro
%   aiorob_fc_type               aioroB-fc
%   moris_type                   moris
%   s_kbaaxts_type               s-KBaaxTs
%   participio_presente_attivo_tema_del_pres ¢es¨ — grammar: "Participio presente attivo (tema del presente e/o)"
%   participio_presente_attivo_tema_del_pres_2 æ¢a` — grammar: "Participio presente attivo (tema del presente je/jo)"
% Irregular (listed in data/verbs.exceptions.tsv): b¨ti, im:ti, qsti, v:d:ti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
