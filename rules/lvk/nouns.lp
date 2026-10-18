% rules/lvk/nouns.lp
% Lavukaleve nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40764: A grammar of Lavukaleve: a Papuan language of the Solomon Islands (1999), pages 123, 126, 127, 139
%   doc 40765: A Grammar of Lavukaleve (2003), pages 126, 132, 133, 136, 142, 143, 145, 146, 148, 150, 153
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vll_declension               belo — grammar: "VlL declension"
%   bili_type                    bili, honi, lovu
%   bin_type                     bin
%   kal_declension               buti — grammar: "KAL declension"
%   fa_type                      fa
%   fakas_type                   fakas
%   falio_type                   falio, fukio, lafio, sagio
%   fe_laus_type                 fe'laus
%   filifil_type                 filifil
%   foforok_type                 foforok
%   fongasara_type               fongasara, namutina
%   funfun_type                  funfun
%   mal_declension               gaikoko — grammar: "MAL declension"
%   giale_type                   giale
%   gurugurur_type               gurugurur
%   kakal_type                   kakal
%   keal_type                    keal
%   kelkel_type                  kelkel
%   v_declension_subclass_iii_consonant_fina kokoroko — grammar: "V declension, subclass III (consonant-final stems)"
%   kolang_type                  kolang, ku'kut
%   kolukol_type                 kolukol
%   kora_type                    kora, mulukita
%   la_mar_type                  la'mar
%   lamulam_type                 lamulam
%   lav_type                     lav
%   mikat_type                   mikat
%   negoneg_type                 negoneg
%   vll_declension_2             ofisi — grammar: "VlL declension"
%   ul_declension                planteson, wof — grammar: "UL declension"
%   simu_type                    simu, vais
%   sova_type                    sova
%   sukafal_type                 sukafal
%   kal_declension_2             taol — grammar: "KAL declension"
%   toe_type                     toe
%   tu_tuku_type                 tu'tuku
%   urio_type                    urio
%   vekevek_type                 vekevek
%   vukel_type                   vukel
%   none_declension              wo — grammar: "NONE declension"
%   aulit_type                   aulit
%   baik_type                    baik
%   ul_declension_subclass_i_vowel_final_ste banga — grammar: "UL declension subclass I (vowel-final stems)"
%   ul_declension_subclass_i_vowel_final_ste_2 beko — grammar: "UL declension subclass I (vowel-final stems)"
%   betea_type                   betea
%   binabina_type                binabina
%   vol_declension_subclass_i    bo'rea — grammar: "VOL declension subclass I"
%   v_declension_subclass_i_vowel_final_stem borokouta — grammar: "V declension, subclass I (vowel-final stems)"
%   buma_type                    buma
%   fakon_type                   fakon
%   fela_koe_type                fela'koe
%   v_declension_subclass_iii_consonant_fina_2 feman — grammar: "V declension, subclass III (consonant-final stems)"
%   v_declension_subclass_iv_words_ending_in fiata — grammar: "V declension, subclass IV (words ending in -a)"
%   foar_type                    foar
%   v_declension_subclass_i_vowel_final_stem_2 foe — grammar: "V declension, subclass I (vowel-final stems)"
%   fu_loa_type                  fu'loa
%   ul_declension_subclass_ii_consonant_fina gogomet — grammar: "UL declension subclass II (consonant-final stems)"
%   ha_lema_type                 ha'lema
%   v_declension_subclass_v_suffixed_with_av ha'tal — grammar: "V declension, subclass V (suffixed with -av)"
%   hai_type                     hai
%   hamusi_type                  hamusi
%   hatala_type                  hatala
%   holovem_type                 holovem
%   homolo_type                  homolo
%   ul_declension_subclass_vi    isura — grammar: "UL declension subclass VI"
%   kaforok_type                 kaforok
%   kakalea_type                 kakalea
%   kalem_type                   kalem
%   kekera_type                  kekera
%   kelas_type                   kelas
%   v_declension_subclass_iv_words_ending_in_2 kera — grammar: "V declension, subclass IV (words ending in -a)"
%   keruv_type                   keruv
%   kevea_type                   kevea
%   v_declension_subclass_i_vowel_final_stem_3 ki — grammar: "V declension, subclass I (vowel-final stems)"
%   vowel_final_nouns            ki'kile — grammar: "vowel-final nouns"
%   v_declension_subclass_iv_words_ending_in_3 kimita — grammar: "V declension, subclass IV (words ending in -a)"
%   ul_declension_subclass_ii_consonant_fina_2 kivir — grammar: "UL declension subclass II (consonant-final stems)"
%   v_declension_subclass_i_vowel_final_stem_4 kivu — grammar: "V declension, subclass I (vowel-final stems)"
%   v_declension_subclass_iv_words_ending_in_4 kokotea — grammar: "V declension, subclass IV (words ending in -a)"
%   koli_type                    koli
%   ul_declension_subclass_vi_2  kosovau — grammar: "UL declension subclass VI"
%   v_declension_subclass_ii_words_ending_in ku'kunio — grammar: "V declension, subclass II (words ending in -io)"
%   ku_raem_type                 ku'raem
%   kua_type                     kua
%   v_declension_subclass_v_suffixed_with_av_2 lake — grammar: "V declension, subclass V (suffixed with -av)"
%   laketei_type                 laketei
%   le_aem_type                  le'aem
%   leumam_type                  leumam
%   loi_type                     loi
%   losi_type                    losi
%   ul_declension_subclass_i_vowel_final_ste_3 lova — grammar: "UL declension subclass I (vowel-final stems)"
%   luga_type                    luga
%   ma_type                      ma
%   mai_type                     mai
%   makatoem_type                makatoem
%   mal_type                     mal
%   v_declension_subclass_iv_words_ending_in_5 mala'gula — grammar: "V declension, subclass IV (words ending in -a)"
%   ul_declension_subclass_ii_consonant_fina_3 matal — grammar: "UL declension subclass II (consonant-final stems)"
%   matua_type                   matua
%   ul_declension_subclass_i_vowel_final_ste_4 miga — grammar: "UL declension subclass I (vowel-final stems)"
%   v_declension_subclass_iv_words_ending_in_6 mola — grammar: "V declension, subclass IV (words ending in -a)"
%   ul_declension_subclass_ii_consonant_fina_4 namutin — grammar: "UL declension subclass II (consonant-final stems)"
%   navigol_type                 navigol
%   nemem_type                   nemem
%   vowel_final_nouns_2          ngia — grammar: "vowel-final nouns"
%   vowel_final_nouns_3          ngiungiu — grammar: "vowel-final nouns"
%   ul_declension_subclass_vi_3  nugur — grammar: "UL declension subclass VI"
%   remrem_type                  remrem
%   vowel_final_nouns_4          ruio — grammar: "vowel-final nouns"
%   si_kul_type                  si'kul
%   sing_type                    sing
%   v_declension_subclass_ii_words_ending_in_2 so'sokio — grammar: "V declension, subclass II (words ending in -io)"
%   sokoraem_type                sokoraem
%   ul_declension_subclass_i_vowel_final_ste_5 soso — grammar: "UL declension subclass I (vowel-final stems)"
%   vowel_final_nouns_5          sugi — grammar: "vowel-final nouns"
%   sulum_type                   sulum
%   v_declension_subclass_i_vowel_final_stem_5 sura — grammar: "V declension, subclass I (vowel-final stems)"
%   suvisuv_type                 suvisuv
%   ta_raitail_type              ta'raitail
%   ul_declension_subclass_ii_consonant_fina_5 ta'rak — grammar: "UL declension subclass II (consonant-final stems)"
%   v_declension_subclass_ii_words_ending_in_3 tagio — grammar: "V declension, subclass II (words ending in -io)"
%   tail_type                    tail
%   taila_type                   taila
%   ul_declension_subclass_vi_4  tara — grammar: "UL declension subclass VI"
%   ul_declension_subclass_iii   tavalol — grammar: "UL declension subclass III"
%   vowel_final_nouns_6          teru — grammar: "vowel-final nouns"
%   to_vum_type                  to'vum
%   v_declension_subclass_iii_consonant_fina_3 toa — grammar: "V declension, subclass III (consonant-final stems)"
%   v_declension_subclass_iii_consonant_fina_4 toto'as — grammar: "V declension, subclass III (consonant-final stems)"
%   tulakom_type                 tulakom
%   ul_declension_subclass_vi_5  vaga — grammar: "UL declension subclass VI"
% Irregular (listed in data/nouns.exceptions.tsv): aira, ali, galengam, houla, kuisa, lekoleko, savaom, soka, suta, ta, vaisa, vo'vo ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
