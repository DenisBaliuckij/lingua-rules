% rules/tig/adjectives.lp
% Tigre adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15342: The Tigre Language of Gindaʿ, Eritrea: Short Grammar and Texts (2014), pages 50, 79, 86, 108, 126
%   doc 15343: The Morphology of the Tigre Noun (1962), pages 22, 34, 35, 38, 39, 40, 41, 42, 43, 73, 74, 80, 81, 82, 83
%   doc 15347: Tigre Grammar and Texts (1983), pages 35, 36, 41, 44, 45, 47, 53, 54, 63, 64, 65, 67, 68, 70, 71, 145, 147, 148, 149, 152
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   akkuy_type                   akkuy, saruy
%   suffixed_plural_am_at        awur — grammar: "suffixed plural -am/-at"
%   bazuh_type                   bazuh
%   suffixed_plural_am_at_2      dangur — grammar: "suffixed plural -am/-at"
%   dbay_type                    dbay
%   suffixed_plural_am_at_3      garrum — grammar: "suffixed plural -am/-at"
%   hamaq_type                   hamaq
%   cvc_v_a                      har — grammar: "CVC (V=a)"
%   harfharay_type               harfharay
%   suffixed_plural_am_at_4      hud — grammar: "suffixed plural -am/-at"
%   suffixed_plural_am_at_5      kabud — grammar: "suffixed plural -am/-at"
%   caoc                         nafjc — grammar: "CaOC"
%   cacac_caccac                 qadam — grammar: "CaCaC, CaCCaC"
%   qddamjqddamay_type           qddamjqddamay
%   sdnni_type                   sdnni
%   broken_plural_class_xi       dbi — grammar: "broken plural class XI"
%   broken_plural_class_xi_2     fddab — grammar: "broken plural class XI"
%   broken_plural_class_xiv      gandab — grammar: "broken plural class XIV"
%   broken_plural_class_xi_3     gddud — grammar: "broken plural class XI"
%   qacic_gzcg_c                 hacir — grammar: "QaCiC, GzCG'C"
%   hambalay_type                hambalay
%   broken_plural_class_xii      hawan — grammar: "broken plural class XII"
%   hayas_type                   hayas
%   na_us_type                   na'us
%   gzcac                        qaydh — grammar: "GzCaC"
%   ocuc                         sabur — grammar: "OCuC"
%   broken_plural_class_xi_4     wdgib — grammar: "broken plural class XI"
%   diminutive                   dabur — grammar: "diminutive"
%   broken_plural_class_xiv_2    dagldl — grammar: "broken plural class XIV"
%   broken_plural_class_xviii    dmsat — grammar: "broken plural class XVIII"
%   broken_plural_class_xiv_3    hankiii — grammar: "broken plural class XIV"
%   diminutive_2                 qarub — grammar: "diminutive"
%   broken_plural_class_xvii     qayah — grammar: "broken plural class XVII"
%   sagub_type                   sagub
%   broken_plural_class_xvii_2   sanu — grammar: "broken plural class XVII"
% Irregular (listed in data/adjectives.exceptions.tsv): sanni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
