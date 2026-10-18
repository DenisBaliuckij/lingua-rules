% rules/kdj/nouns.lp
% Karamojong nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296351: Parlons karimojong: Une langue de l'Afrique orientale (2008), pages 52, 53, 54, 55, 57, 58, 86, 87, 88, 89, 90, 91, 94, 110
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   pluriel_en_e                 a-bita — grammar: "Pluriel en -e"
%   pluriel_en_a_ou_wa           a-boket — grammar: "Pluriel en -a ou -wa"
%   a_beeru_type                 a-bèèru
%   a_dok_et_type                a-dok-et
%   a_jul_ot_type                a-jul-ot
%   a_jore_type                  a-jôrè
%   a_kaae_type                  a-kaae
%   a_kare_type                  a-kare
%   a_kau_type                   a-kau
%   a_ki_lip_type                a-ki-lip
%   a_ki_myet_type               a-ki-myèt
%   a_ki_pany_type               a-ki-pany
%   a_ki_tela_type               a-ki-tèla
%   pluriel_en_ya_ou_ia          a-kim — grammar: "Pluriel en -ya ou -ia"
%   a_kimuj_type                 a-kimuj
%   pluriel_en_i                 a-kine — grammar: "Pluriel en -i"
%   a_kiro_it_type               a-kiro-it
%   a_kopit_type                 a-kopit
%   a_kwar_type                  a-kwar
%   pluriel_en_ya_ou_ia_2        a-kwàp — grammar: "Pluriel en -ya ou -ia"
%   pluriel_en_a_ou_wa_2         a-kùryet — grammar: "Pluriel en -a ou -wa"
%   pluriel_en_a_ou_wa_3         a-molij — grammar: "Pluriel en -a ou -wa"
%   a_moni_type                  a-moni
%   pluriel_en_0_ou_wo           a-mosing — grammar: "Pluriel en -0 ou -wo"
%   pluriel_en_i_2               a-muro — grammar: "Pluriel en -i"
%   a_ngalopa_type               a-ngalopa
%   pluriel_en_i_3               a-ngole — grammar: "Pluriel en -i"
%   pluriel_en_yo_ou_io          a-ngolol — grammar: "Pluriel en -yo ou -io"
%   a_puru_type                  a-puru
%   a_rupepe_type                a-rupepe
%   pluriel_en_0_ou_wo_2         a-sepic — grammar: "Pluriel en -0 ou -wo"
%   a_tur_ot_type                a-tùr-ot
%   bilibilikan_type             bilibilikan
%   e_kuru_t_type                e-kùru-t
%   kucil_type                   kucil
%   lo_cen_type                  lo-cen
%   lo_cin_type                  lo-cin
%   lo_kaamae_type               lo-kaamae
%   lo_kaapa_type                lo-kaapa
%   lo_kaato_type                lo-kaato
%   lo_kaaya_type                lo-kaaya
%   lo_nya_type                  lo-nya
%   mamae_type                   mamae
%   na_cen_type                  na-cen
%   na_kaamae_type               na-kaamae
%   na_kaapa_type                na-kaapa
%   na_kaato_type                na-kaato
%   na_kaaya_type                na-kaaya
%   na_kewon_type                na-kewon
%   papa_type                    papa
%   papaa_type                   pàpàà
%   toto_type                    toto
%   tata_type                    tàtà
%   e_iope_type                  è-Iôpe
%   pluriel_en_a_ou_wa_4         è-Iùkutuj — grammar: "Pluriel en -a ou -wa"
%   pluriel_en_ya_ou_ia_3        è-banyet — grammar: "Pluriel en -ya ou -ia"
%   e_bibir_u_type               è-bibir-u
%   pluriel_en_i_4               è-buku — grammar: "Pluriel en -i"
%   pluriel_en_a_ou_wa_5         è-ciili — grammar: "Pluriel en -a ou -wa"
%   e_donga_type                 è-dônga
%   e_jam_u_type                 è-jam-u
%   e_jie_type                   è-jiè
%   e_ka_met_on_type             è-ka-met-on
%   e_ka_pol_on_type             è-ka-pol-on
%   e_ka_tuk_on_type             è-ka-tuk-on
%   e_kacer_type                 è-kacer
%   e_karu_type                  è-karu
%   e_ke_gir_an_type             è-ke-gir-an
%   e_kelai_type                 è-kelai
%   e_ki_mo_in_type              è-ki-mo-in
%   e_ki_tanda_type              è-ki-tanda
%   pluriel_en_0_ou_wo_3         è-kicolong — grammar: "Pluriel en -0 ou -wo"
%   pluriel_en_yo_ou_io_2        è-kikor — grammar: "Pluriel en -yo ou -io"
%   e_kil_e_type                 è-kil-e
%   e_kima_t_type                è-kimà-t
%   pluriel_en_i_5               è-kitabo — grammar: "Pluriel en -i"
%   pluriel_en_i_6               è-kone — grammar: "Pluriel en -i"
%   pluriel_en_ya_ou_ia_4        è-kor — grammar: "Pluriel en -ya ou -ia"
%   pluriel_en_0_ou_wo_4         è-kori — grammar: "Pluriel en -0 ou -wo"
%   e_kuuta_n_type               è-kuuta-n
%   pluriel_en_a_ou_wa_6         è-kuwam — grammar: "Pluriel en -a ou -wa"
%   pluriel_en_e_2               è-kwanga — grammar: "Pluriel en -e"
%   pluriel_en_ya_ou_ia_5        è-kàl — grammar: "Pluriel en -ya ou -ia"
%   pluriel_en_ya_ou_ia_6        è-kèk — grammar: "Pluriel en -ya ou -ia"
%   pluriel_en_yo_ou_io_3        è-lap — grammar: "Pluriel en -yo ou -io"
%   pluriel_en_yo_ou_io_4        è-mir — grammar: "Pluriel en -yo ou -io"
%   e_mo_it_type                 è-mo-it
%   pluriel_en_yo_ou_io_5        è-morotot — grammar: "Pluriel en -yo ou -io"
%   e_mukur_a_type               è-mùkùr-a
%   pluriel_en_0_ou_wo_5         è-mùn — grammar: "Pluriel en -0 ou -wo"
%   e_muu_t_type                 è-mùu-t
%   e_pon_oi_type                è-pon-oi
%   pluriel_en_a_ou_wa_7         è-rè — grammar: "Pluriel en -a ou -wa"
%   pluriel_en_i_7               è-siro — grammar: "Pluriel en -i"
%   e_suru_t_type                è-sùru-t
%   e_tal_type                   è-tal
%   e_tic_type                   è-tic
%   e_tim_at_type                è-tim-at
%   pluriel_en_e_3               è-tom — grammar: "Pluriel en -e"
% Irregular (listed in data/nouns.exceptions.tsv): a-koù, a-kwa-n, i-kokù
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
