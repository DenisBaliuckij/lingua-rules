% rules/guk/verbs.lp
% Gumuz verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296277: A Grammar of Northern and Southern Gumuz (2012), pages 136
%   doc 296322: A grammar of Gaahmg: A Nilo-Saharan Language of Sudan (2011), pages 53, 125, 157, 186, 198, 202, 217, 229, 230, 232, 233, 237, 240, 252, 257, 270, 271, 272, 273
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   cr_type                      cɔ̄r, d̪u᷅r
%   dur_type                     d̪ùr
%   fir_type                     fír
%   third_singular_completive_verbs_with_fir bɛ᷇l-d̪á — grammar: "third singular completive verbs with first singular =ə᷇n, third singular =i᷇n, first plural =ə᷇ggə́ggə́n, and third plural =îggə̀"
%   continuous_non_past_distance_paradigm kɔ́m — grammar: "continuous non-past distance paradigm"
%   k_type                       kə᷄ð
%   bun_du_type                  bu᷆n-d̪ū
%   bl_type                      bɛ́l
%   third_singular_completive_verbs_with_fir_2 cɔ̄r-sɔ́, fír-sə́, kə᷄s-sə́, pə̂r-sə̄ — grammar: "third singular completive verbs with first singular =ə᷇n, third singular =i᷇n, first plural =ə᷇ggə́ggə́n, and third plural =îggə̀"
%   third_singular_completive_verbs_with_fir_3 d̪ùr-sū — grammar: "third singular completive verbs with first singular =ə᷇n, third singular =i᷇n, first plural =ə᷇ggə́ggə́n, and third plural =îggə̀"
%   ks_type                      kə᷄s
%   pr_type                      pə́r
%   pr_type_2                    pə̂r
%   ab_type                      ab
%   completive_verbs             bu᷆ɲ-sū — grammar: "completive verbs"
%   adjectival_verbs             bánd̪āl — grammar: "adjectival verbs"
%   adjectival_verbs_2           bɛ́r — grammar: "adjectival verbs"
%   bl_type_2                    bɛ᷇l
%   cig_type                     cig
%   cud_type                     cud̪
%   adjectival_verbs_3           cúú — grammar: "adjectival verbs"
%   cig_type_2                   cīg
%   cud_type_2                   cūd̪
%   subjunctive_verbs            cɔ́r-rɔ́ — grammar: "subjunctive verbs"
%   cr_r_type                    cɔ̄r-r
%   ds_s_type                    dɔ̄ɔs̀-s
%   dur_r_type                   d̪ùr-r
%   subjunctive_verbs_2          d̪ùr-rū — grammar: "subjunctive verbs"
%   fir_r_type                   fír-r
%   subjunctive_verbs_3          fír-rə́ — grammar: "subjunctive verbs"
%   adjectival_verbs_4           fāā — grammar: "adjectival verbs"
%   f_type                       fɛð
%   gu_type                      guɲ
%   adjectival_verbs_5           gààl — grammar: "adjectival verbs"
%   gu_type_2                    gùɲ
%   gn_type                      gɔn
%   gn_type_2                    gɔ̀n
%   ka_type                      kaɟ
%   ka_type_2                    káɟ
%   adjectival_verbs_6           kāyáár — grammar: "adjectival verbs"
%   ky_type                      kɔy
%   k_type_2                     kə᷄ð-ð
%   las_type                     las
%   adjectival_verbs_7           lūsú — grammar: "adjectival verbs"
%   lf_type                      lɔf
%   lf_type_2                    lɔ̀f
%   mal_type                     mal
%   mar_type                     màr
%   mal_type_2                   māl
%   pa_type                      pa
%   pa_type_2                    pā
%   subjunctive_verbs_4          pə̂r-rə̄ — grammar: "subjunctive verbs"
%   pr_s_type                    pə̂r-sə̀
%   wr_type                      wɛr
%   wr_type_2                    wɛ̄r
%   ab_type_2                    àb
%   adjectival_verbs_8           áɛ̀ — grammar: "adjectival verbs"
%   am_type                      ɲam
%   aw_type                      ɲaw
%   adjectival_verbs_9           ɲāán — grammar: "adjectival verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
