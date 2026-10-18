% rules/arb/nouns.lp
% Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14256: A Reference Grammar of Modern Standard Arabic (2017), pages 135, 165, 166, 174, 175, 341, 507, 516, 526, 539, 556, 566, 567, 579, 581, 582, 591, 603, 605, 646, 648
%   doc 108586: Grammatica Arabica (1834), pages 65, 217, 218, 248, 249, 276, 393, 394, 398, 403, 408, 409, 410, 440, 442
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nomen_sanum                  قصاب — grammar: "Nomen sanum"
%   nomen_curtum_secundae_declinationis موسی — grammar: "nomen curtum secundae declinationis"
%   nomen_in_desinens            Majja — grammar: "Nomen in ... desinens.."
%   pluralia_fracta              جوارى — grammar: "pluralia fracta"
%   declinatio_secunda           مبدی — grammar: "Declinatio secunda"
%   declinatio_secunda_singularium šī — grammar: "declinatio secunda singularium"
%   class_type                   ألف
%   declinatio_prima_singularium قاب — grammar: "declinatio prima singularium"
%   nomen_defectivum             Lc — grammar: "Nomen defectivum ."
%   plural_cucac_fuaal_from_singular_cvcca_f Suura — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   duulaar_type                 duulaar
%   fiiruus_type                 fiiruus
%   plural_cicac_fiaal_from_singular_cicca_f fikra — grammar: "Plural CiCaC( fiʿaal ) from singular CiCCa ( fiʿala ) or CaCiiC ( faʿiil )"
%   plural_cicac_fiaal_from_singular_cicca_f_2 fitna — grammar: "Plural CiCaC( fiʿaal ) from singular CiCCa ( fiʿala ) or CaCiiC ( faʿiil )"
%   plural_cucac_fuaal_from_singular_cvcca_f_2 furSa — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   plural_cucac_fuaal_from_singular_cvcca_f_3 ghurfa — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   hurmuun_type                 hurmuun
%   plural_cicaac_fiaal_from_singular_cvcvc jabal — grammar: "Plural CiCaaC ( fiʿaal ) from singular CVCVC or CVCC ( faʿal , faʿul , faʿl )"
%   plural_caccaa_falaa_from_singular_caciic jariiH — grammar: "Plural CaCCaa ( faʿlaa ) from singular CaCiiC ( faʿiil ) or CaCCiC ( faʿfiil )"
%   plural_cicaac_fiaal_from_singular_cvcvc_2 jarra — grammar: "Plural CiCaaC ( fiʿaal ) from singular CVCVC or CVCC ( faʿal , faʿul , faʿl )"
%   plural_cucac_fuaal_from_singular_cvcca_f_4 jumla — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   kumbiyuutir_type             kumbiyuutir
%   liitir_type                  liitir
%   luurd_type                   luurd
%   plural_caccaa_falaa_from_singular_caciic_2 mariiD — grammar: "Plural CaCCaa ( faʿlaa ) from singular CaCiiC ( faʿiil ) or CaCCiC ( faʿfiil )"
%   iv_ap                        muHiiT — grammar: "IV AP"
%   ii_ap                        mudarrisa — grammar: "II AP"
%   plural_cucac_fuaal_from_singular_cvcca_f_5 mudda — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   ii_ap_2                      mudhakkira — grammar: "II AP"
%   quad_ap                      mufarqiﬁ — grammar: "Quad AP"
%   ii_pp                        mujallad — grammar: "II PP"
%   vii_pp                       munHaDar — grammar: "VII PP"
%   iv_pp                        munsha√a — grammar: "IV PP"
%   iv_ap_2                      mushrifa — grammar: "IV AP"
%   x_ap                         mustahlika — grammar: "X AP"
%   x_pp                         mustanqaﬁ — grammar: "X PP"
%   x_pp_2                       mustashfan — grammar: "X PP"
%   x_pp_3                       mustawTana — grammar: "X PP"
%   viii_pp                      mustawan — grammar: "VIII PP"
%   v_pp                         mutaghayyar — grammar: "V PP"
%   vi_ap                        mutaraadif — grammar: "VI AP"
%   v_ap                         mutaxaSSisa — grammar: "V AP"
%   iii_ap                       muwaaTina — grammar: "III AP"
%   ii_ap_3                      muxaddir — grammar: "II AP"
%   ii_pp_2                      mu√assasa — grammar: "II PP"
%   viii_pp_2                    mu√tamar — grammar: "VIII PP"
%   quad_pp                      muﬁaskar — grammar: "Quad PP"
%   plural_caccaa_falaa_from_singular_caciic_3 qatiil — grammar: "Plural CaCCaa ( faʿlaa ) from singular CaCiiC ( faʿiil ) or CaCCiC ( faʿfiil )"
%   plural_cicac_fiaal_from_singular_cicca_f_3 qiSSa — grammar: "Plural CiCaC( fiʿaal ) from singular CiCCa ( fiʿala ) or CaCiiC ( faʿiil )"
%   plural_cicac_fiaal_from_singular_cicca_f_4 qiima — grammar: "Plural CiCaC( fiʿaal ) from singular CiCCa ( fiʿala ) or CaCiiC ( faʿiil )"
%   raa_type                     raa√
%   sabfiiina_type               sabﬁiina
%   plural_cicaac_fiaal_from_singular_cvcvc_3 salla — grammar: "Plural CiCaaC ( fiʿaal ) from singular CVCVC or CVCC ( faʿal , faʿul , faʿl )"
%   sittiina_type                sittiina
%   taaksii_type                 taaksii
%   talifuun_type                talifuun
%   tisfiiina_type               tisﬁiina
%   waaw_type                    waaw
%   zaynab_type                  zaynab
%   plural_cucac_fuaal_from_singular_cvcca_f_6 ʿumma — grammar: "Plural CuCaC ( fuʿaal ) from singular CVCCa ( faʿala, fuʿala, fiʿala )"
%   class_type_2                 مائة
%   alif_type                    √alif
%   amiira_type                  √amiira
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
