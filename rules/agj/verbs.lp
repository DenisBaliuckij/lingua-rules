% rules/agj/verbs.lp
% Argobba verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388558: A Preliminary Description of Argobba (1959), pages 6, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
%   doc 848326: Outlines of Argobba Pedagogical Grammar (2025), pages 17
%   doc 853844: Argobba Grammar (n.d.), pages 9
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   saddaba_type                 sâddâba
%   negative_copula              ahun — grammar: "negative copula"
%   class_laka                   ala — grammar: "Class laka"
%   class_qalla_type_sdmma       asgebba — grammar: "Class *qalla, type sdmma"
%   class_laka_2                 ashewwa — grammar: "Class laka"
%   quinquiliterals              dblâÇâllâça — grammar: "Quinquiliterals"
%   negative_verb_of_existence   ellau — grammar: "negative verb of existence"
%   verb_of_existence            halla — grammar: "verb of existence"
%   type_c                       marrk — grammar: "Type C"
%   type_b                       naggd — grammar: "Type B"
%   copula                       ne — grammar: "copula"
%   type_a                       sâdbb — grammar: "Type A"
%   negative_verb_of_possession  yellâ — grammar: "negative verb of possession"
%   quinquiliterals_2            ablâçâllâça — grammar: "Quinquiliterals"
%   quadriliterals_type_a        agâlâggâla — grammar: "Quadriliterals Type A"
%   class_heda                   aheda, asheda — grammar: "Class heda"
%   quadriliterals_type_a_2      asmenezzâra — grammar: "Quadriliterals Type A"
%   class_qoma                   asrota — grammar: "Class qoma"
%   class_laka_3                 awela — grammar: "Class laka"
%   quadriliterals_type_a_3      dssebâssâba — grammar: "Quadriliterals Type A"
%   class_qoma_2                 dzzora — grammar: "Class qoma"
%   quadriliterals_type_a_4      dânàggâta — grammar: "Quadriliterals Type A"
%   class_laka_4                 haiva — grammar: "Class laka"
%   reflexive_passive_stem       nâkâs — grammar: "Reflexive-passive stem"
%   class_heda_2                 ssseta — grammar: "Class heda"
%   verbs_with_3rd_radical_h_type_a tdterrâha — grammar: "Verbs with 3rd radical h, type A"
%   class_qoma_3                 aqoma — grammar: "Class qoma"
%   type_a_2                     asgenna — grammar: "Type A"
%   verbs_with_3rd_radical_h_type_a_2 asterrâha — grammar: "Verbs with 3rd radical h, type A"
%   abbreviated_quadriliterals_type_salacca asâlâcca — grammar: "Abbreviated quadriliterals Type sâlâcca"
%   class_laka_5                 dggera — grammar: "Class laka"
%   class_laka_6                 gara — grammar: "Class laka"
%   class_heda_3                 heda — grammar: "Class heda"
%   frequentative_stem           lâqaqqâma — grammar: "Frequentative stem"
%   reflexive_passive_stem_2     marrâka — grammar: "Reflexive-passive stem"
%   verbs_with_3rd_radical_h_type_a_3 qâddâha — grammar: "Verbs with 3rd radical h, type A"
%   causative_stem               saggât — grammar: "Causative stem"
%   stem_with_dn_an_dn           tâlâttâla — grammar: "Stem with dn-, an- (dn-)"
%   abbreviated_quadriliterals_type_baratta âgeënâbba — grammar: "Abbreviated quadriliterals Type baratta"
%   abbreviated_quadriliterals_type_baratta_2 abârâtta — grammar: "Abbreviated quadriliterals Type baratta"
%   verbs_with_3rd_radical_h_type_a_4 abâzzâha — grammar: "Verbs with 3rd radical h, type A"
%   type_a_3                     agâhha — grammar: "Type A"
%   abbreviated_quadriliterals_type_baratta_3 asfenâdda — grammar: "Abbreviated quadriliterals Type baratta"
%   class_laka_7                 dbbehela — grammar: "Class laka"
%   class_qalla_type_sdmma_2     dwwegga — grammar: "Class *qalla, type sdmma"
%   class_qoma_4                 qoma — grammar: "Class qoma"
%   abbreviated_quadriliterals_type_salacca_2 sâlâcca — grammar: "Abbreviated quadriliterals Type sâlâcca"
%   verbs_with_initial_a_basic   arrâfa — grammar: "Verbs with initial a- (basic)"
%   causative_stem_2             bettân — grammar: "Causative stem"
%   verbs_with_initial_h_basic   hallaba — grammar: "Verbs with initial h (basic)"
%   stem_with_as                 mellâsa — grammar: "Stem with as-"
%   causative_stem_3             mâllât — grammar: "Causative stem"
%   reciprocal_stem              nakkâs — grammar: "Reciprocal stem"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
