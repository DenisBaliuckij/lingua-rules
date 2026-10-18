% rules/sei/nouns.lp
% Seri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389099: Seri, A Grammar of (2007), pages 448, 449, 452, 453, 454, 455, 457, 471, 615, 616, 629, 632, 635, 801
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   yahit_type                   yahit
%   yanopj_type                  yanopj
%   words_with_post_tonic_stem_vowels_in_the iime — grammar: "Words with post-tonic stem vowels in the singular form only"
%   atalxiicom_type              atalxiicom
%   atcamahaj_type               atcamahaj
%   atcmajeem_type               atcmajeem
%   atcz_type                    atcz
%   azcz_type                    azcz
%   locational_nouns             cöhipatj — grammar: "Locational nouns"
%   locational_nouns_2           cöhipátalca — grammar: "Locational nouns"
%   locational_nouns_3           hayaniicjoj — grammar: "Locational nouns"
%   locational_nouns_4           hihiin, hihiinpx, hiicp, himac ... — grammar: "Locational nouns"
%   locational_nouns_5           himocaj, hitacaj, hípajoj, híyataj — grammar: "Locational nouns"
%   kinship_terms                icaz — grammar: "kinship terms"
%   locational_nouns_6           ihyaniicp — grammar: "Locational nouns"
%   ii_type                      ii
%   iiseja_type                  iiseja
%   imt_type                     imt
%   other_possessed_nouns        isa — grammar: "other possessed nouns"
%   istj_type                    istj
%   itaamt_type                  itaamt
%   itac_type                    itac
%   ito_type                     ito
%   itoaa_type                   itoaa
%   kinship_terms_2              mahaj — grammar: "kinship terms"
%   ntaac_type                   ntaac
%   kinship_terms_3              paac, paz — grammar: "kinship terms"
%   other_possessed_nouns_2      soj, taast — grammar: "other possessed nouns"
%   other_possessed_nouns_3      yeen — grammar: "other possessed nouns"
%   acmajeete_type               acmajeete
%   azaac_type                   azaac
%   caamopxa_type                caamopxa
%   vowel_final_stem             canoaa — grammar: "Vowel-final stem"
%   vowel_final_stem_2           cascareera — grammar: "Vowel-final stem"
%   words_with_post_tonic_stem_vowels_in_the_2 coeept — grammar: "Words with post-tonic stem vowels in the plural form only"
%   cof_type                     cof
%   ctam_type                    ctam
%   words_with_post_tonic_stem_vowels_in_the_3 haaco — grammar: "Words with post-tonic stem vowels in the singular form only"
%   haaho_type                   haaho
%   hamquee_type                 hamquee
%   hamac_type                   hamác
%   words_with_post_tonic_stem_vowels_in_the_4 hapefe — grammar: "Words with post-tonic stem vowels in the singular form only"
%   hapxa_type                   hapxa
%   words_with_post_tonic_stem_vowels_in_the_5 hasct — grammar: "Words with post-tonic stem vowels in the plural form only"
%   words_with_post_tonic_stem_vowels_in_the_6 hast — grammar: "Words with post-tonic stem vowels in the plural form only"
%   hax_type                     hax
%   words_with_post_tonic_stem_vowels_in_the_7 haxz° — grammar: "Words with post-tonic stem vowels in the plural form only"
%   words_with_post_tonic_stem_vowels_in_the_8 heexoj — grammar: "Words with post-tonic stem vowels in the singular form only"
%   hehe_type                    hehe
%   locational_nouns_7           himozít — grammar: "Locational nouns"
%   vowel_final_stem_3           hohra — grammar: "Vowel-final stem"
%   words_with_post_tonic_stem_vowels_in_the_9 hoocax — grammar: "Words with post-tonic stem vowels in the singular form only"
%   icaamiz_type                 icaamiz
%   words_with_post_tonic_stem_vowels_in_the_10 icaheme — grammar: "Words with post-tonic stem vowels in the singular form only"
%   iip_type                     iip
%   words_with_post_tonic_stem_vowels_in_the_11 iist — grammar: "Words with post-tonic stem vowels in the plural form only"
%   words_with_post_tonic_stem_vowels_in_the_12 iizax — grammar: "Words with post-tonic stem vowels in the singular form only"
%   ilit_type                    ilít
%   words_with_post_tonic_stem_vowels_in_the_13 imož — grammar: "Words with post-tonic stem vowels in the singular form only"
%   inol_type                    inol
%   ipac_type                    ipac
%   words_with_post_tonic_stem_vowels_in_the_14 isct — grammar: "Words with post-tonic stem vowels in the plural form only"
%   isla_type                    isla
%   isxaneehjo_type              isxaneehjö
%   itrooqui_type                itrooqui
%   lit_type                     lít
%   consonant_final_stem         meroon — grammar: "Consonant-final stem"
%   words_with_post_tonic_stem_vowels_in_the_15 mojepe — grammar: "Words with post-tonic stem vowels in the singular form only"
%   noosi_type                   noosi
%   nop_type                     nop
%   words_with_post_tonic_stem_vowels_in_the_16 oot — grammar: "Words with post-tonic stem vowels in the plural form only"
%   vowel_final_stem_4           pazaato — grammar: "Vowel-final stem"
%   consonant_final_stem_2       ret — grammar: "Consonant-final stem"
%   consonant_final_stem_3       santaar — grammar: "Consonant-final stem"
%   vowel_final_stem_5           saraapi — grammar: "Vowel-final stem"
%   vowel_final_stem_6           seaato — grammar: "Vowel-final stem"
%   words_with_post_tonic_stem_vowels_in_the_17 seepol — grammar: "Words with post-tonic stem vowels in the singular form only"
%   words_with_post_tonic_stem_vowels_in_the_18 siip — grammar: "Words with post-tonic stem vowels in the plural form only"
%   words_with_post_tonic_stem_vowels_in_the_19 sleecoj — grammar: "Words with post-tonic stem vowels in the singular form only"
%   vowel_final_stem_7           soaano — grammar: "Vowel-final stem"
%   words_with_post_tonic_stem_vowels_in_the_20 teepol — grammar: "Words with post-tonic stem vowels in the singular form only"
%   consonant_final_stem_4       tootar — grammar: "Consonant-final stem"
%   words_with_post_tonic_stem_vowels_in_the_21 xeecoj — grammar: "Words with post-tonic stem vowels in the singular form only"
%   xees_type                    xees
%   xpaahjo_type                 xpaahjö
%   words_with_post_tonic_stem_vowels_in_the_22 xpist — grammar: "Words with post-tonic stem vowels in the plural form only"
%   xtaasi_type                  xtaasi
%   words_with_post_tonic_stem_vowels_in_the_23 xtiip — grammar: "Words with post-tonic stem vowels in the plural form only"
%   yaaco_type                   yaaco
%   words_with_post_tonic_stem_vowels_in_the_24 yaamol — grammar: "Words with post-tonic stem vowels in the singular form only"
%   yaap_type                    yaap
%   zaap_type                    zaap
%   words_with_post_tonic_stem_vowels_in_the_25 ziic — grammar: "Words with post-tonic stem vowels in the plural form only"
%   words_with_post_tonic_stem_vowels_in_the_26 zoozj — grammar: "Words with post-tonic stem vowels in the plural form only"
% Irregular (listed in data/nouns.exceptions.tsv): cmaam, cmiique, eejc, zaah, ziix
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
