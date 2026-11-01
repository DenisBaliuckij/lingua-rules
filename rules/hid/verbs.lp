% rules/hid/verbs.lp
% Hidatsa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389456: Hidatsa Morpho-Syntax and Clause Structure (2007), pages 96, 97, 98, 99, 100, 101, 102, 156, 165, 166, 167, 177, 180, 272
%   doc 389458: A Grammar of Hidatsa (2012), pages 99, 103, 135, 136, 137, 141, 144, 190, 197, 236, 268, 269, 270, 271, 304, 367, 368, 377, 381, 565
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   active_inflection            nuuhi — grammar: "active inflection"
%   active_intransitive_a_set_prefixes diríác — grammar: "ACTIVE INTRANSITIVE (A-SET PREFIXES)"
%   gi_verbs                     ghadádahxi — grammar: "GI-verbs"
%   gi_verbs_2                   gigéèsee — grammar: "GI-verbs"
%   stative_b_set_prefixes       hiidác — grammar: "STATIVE (B-SET PREFIXES)"
%   naagua_type                  naagua
%   ree_type                     ree
%   i_verbs                      íbcadaa — grammar: "í-verbs"
%   i_verbs_2                    íìgcudi — grammar: "í-verbs"
%   ocahdi_type                  ócahdi
%   active_verb                  riki — grammar: "active verb"
%   cagubic_type                 cagubic
%   stative_verbal_paradigm_vowel_initial_st ihaac — grammar: "Stative verbal paradigm (vowel initial stem)"
%   stative_transitive_verbal_paradigm khacii — grammar: "Stative transitive verbal paradigm"
%   noun_stripping               mirihbíc — grammar: "noun stripping"
%   noun_stripping_2             miriríìric — grammar: "noun stripping"
%   noun_stripping_3             mirídic — grammar: "noun stripping"
%   stative_verb_consonant_initial_stem xi?ee — grammar: "stative verb (consonant initial stem)"
%   a_verbs                      ágabcia, ágaraahsi, ágcixi, áàgsua — grammar: "á-VERBS"
%   locative_gi_verbs            áhgagahsi, óhgigi — grammar: "locative GI-verbs"
%   locative_gi_verbs_2          íhgirigi — grammar: "locative GI-verbs"
%   vcv                          ahi — grammar: "VCV"
%   imperative_inflection_of_verbs_with_stem aradohdí — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_2 araxaadí — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   class_vi_active_verbs        awaheethee — grammar: "CLASS VI: ACTIVE VERBS"
%   imperative_inflection_of_verbs_with_stem_3 bácaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_4 bádaa — grammar: "imperative inflection of verbs with stem-final VV"
%   i_ablaut                     bádaree — grammar: "i-ABLAUT"
%   bagiria_type                 bágiria
%   imperative_inflection_of_verbs_with_stem_5 báhdaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_6 báhgixi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_7 báhsaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_8 báxaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_9 báxeesi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_10 báàhi — grammar: "imperative inflection of verbs with stem-final (V)VHV"
%   cvvcv                        caadi — grammar: "CVVCV"
%   cvcvv                        cadaa — grammar: "CVCVV"
%   cvcvv_2                      carua — grammar: "CVCVV"
%   ccvvcv                       cgaadi — grammar: "CCVVCV"
%   ccvvcv_2                     cgiidi — grammar: "CCVVCV"
%   ccvcv                        cgubi — grammar: "CCVCV"
%   cvcvv_3                      ciria — grammar: "CVCVV"
%   cvvcv_2                      cuudi — grammar: "CVVCV"
%   cvccv                        dahsi — grammar: "CVCCV"
%   cvccv_2                      dahxi — grammar: "CVCCV"
%   cvcvv_4                      daree — grammar: "CVCVV"
%   diria_type                   diríá
%   cvccv_3                      dohdi — grammar: "CVCCV"
%   cvcvv_5                      garee — grammar: "CVCVV"
%   imperative_inflection_of_verbs_with_stem_11 giradahxí — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_12 giragabhí — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_13 girusúùgi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   a_ablaut                     géèsee — grammar: "a-ABLAUT"
%   imperative_inflection_of_verbs_with_stem_14 gíìri — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   cvvcv_3                      haadi — grammar: "CVVCV"
%   i_ablaut_2                   habéè — grammar: "i-ABLAUT"
%   imperative_inflection_of_verbs_with_stem_15 hacáà — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_16 hagáci — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_17 hasíhsi — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   ccvccv                       hdahdi — grammar: "CCVCCV"
%   ccvvcv_3                     hdiiwi — grammar: "CCVVCV"
%   ccvcv_2                      hgici — grammar: "CCVCV"
%   ccvcv_3                      hsugi — grammar: "CCVCV"
%   cvvcv_4                      huuwi — grammar: "CVVCV"
%   ccvcvv                       hxaraa — grammar: "CCVCVV"
%   ichee_type                   ichéè
%   ihgigirasiria_type           ihgigirásiria
%   ihgigeeseeria_type           ihgigéèseeria
%   ihgirusia_type               ihgirusíà
%   ihgiruwiiri_type             ihgiruwíìri
%   iigigua_type                 iigigúà
%   imperative_inflection_of_verbs_with_stem_18 maaruudí — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_19 mahgú — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_20 miréèri — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_21 nadhí — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_22 nagaahí — grammar: "imperative inflection of verbs with stem-final (V)VHV"
%   nagadaa_type                 nagadáà
%   imperative_inflection_of_verbs_with_stem_23 nagagíbi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_24 nagahuurí — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_25 naghuuwí — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   naghia_type                  naghíà
%   imperative_inflection_of_verbs_with_stem_26 nágaraa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_27 náhbi — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_28 náhcagi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_29 náhdabi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   imperative_inflection_of_verbs_with_stem_30 náàwi — grammar: "imperative inflection of verbs with stem-final (V)VCV"
%   nucarua_type                 núcarua
%   i_ablaut_3                   núdaree — grammar: "i-ABLAUT"
%   imperative_inflection_of_verbs_with_stem_31 núdhi — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_32 núgaraa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_33 núhci — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_34 núhxaraa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_35 núsahsi — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_36 núsgi — grammar: "imperative inflection of verbs with stem-final (V)VCCV"
%   imperative_inflection_of_verbs_with_stem_37 núùbaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_38 núùhi — grammar: "imperative inflection of verbs with stem-final (V)VHV"
%   imperative_inflection_of_verbs_with_stem_39 núùsaa — grammar: "imperative inflection of verbs with stem-final VV"
%   imperative_inflection_of_verbs_with_stem_40 núùxaa — grammar: "imperative inflection of verbs with stem-final VV"
%   cvvcv_5                      seesi — grammar: "CVVCV"
%   cvcv                         sudi — grammar: "CVCV"
%   i_ablaut_4                   séé — grammar: "i-ABLAUT"
%   sua_type                     súá
%   vcv_2                        uhi — grammar: "VCV"
%   cvccv_4                      xahxi — grammar: "CVCCV"
%   cvcvv_6                      xarua — grammar: "CVCVV"
%   cvcv_2                       xisi — grammar: "CVCV"
%   cvvcv_6                      xooxi — grammar: "CVVCV"
% Irregular (listed in data/verbs.exceptions.tsv): adaaríc, adhíìc, asaaríc, awáàgic, déèc, gíí, gúú, gúˀ, hirí, hiríc, héèc, híìc ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
