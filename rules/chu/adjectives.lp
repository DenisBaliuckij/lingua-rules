% rules/chu/adjectives.lp
% Old Church Slavonic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79441: Staroslavenska riječ: Gramatika starocrkvenoslavenskoga jezika (2014), pages 81, 100, 129, 130
%   doc 92938: Introduzione alla lingua paleoslava (2007), pages 145, 161, 193, 203, 274, 276, 277, 278, 280, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291
%   doc 289620: Hrammatiki slavenskija pravilnoe syntagma (Kirchenslavische Grammatik) (1974), pages 55, 57, 61, 69, 82, 96, 122, 132, 202, 209
%   doc 389281: Handbook of Old Church Slavonic, Part I: Old Church Slavonic Grammar (1959), pages 71, 77, 82, 112, 114, 116, 125, 132, 145, 182, 183, 184, 188, 191, 197, 198, 201, 204, 205, 206, 210, 214
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   pronominal_comparatives      стара́йшъ — grammar: "pronominal comparatives"
%   long_comparative_forms       cTap-fc-H — grammar: "long comparative forms"
%   class_type                   біена
%   class_type_2                 біеный
%   class_type_3                 біеное
%   long_comparative_form_in_fch_wh_dh_fcie CTdpTi — grammar: "long comparative form in -"fcH (-WH, -dH), --fcie, -"kHUiH"
%   long_comparative_form_in_fch_wh_dh_fcie_2 HOBli — grammar: "long comparative form in -"fcH (-WH, -dH), --fcie, -"kHUiH"
%   adjectives_ending_in_a_secondary_suffix P — grammar: "adjectives ending in a secondary suffix -Tiirk, -biTK, -OK'K"
%   adjectives_ending_in_a_secondary_suffix_2 BlilCOKli — grammar: "adjectives ending in a secondary suffix -Tiirk, -biTK, -OK'K"
%   adjectives_ending_in_a_secondary_suffix_3 Kp-kni^Kii — grammar: "adjectives ending in a secondary suffix -Tiirk, -biTK, -OK'K"
%   comparative_forms_without_positive_bases baujthh — grammar: "Comparative forms without positive bases"
%   comparative_forms_without_positive_bases_2 coyaHH — grammar: "Comparative forms without positive bases"
%   comparative_forms_without_positive_bases_3 oyHHH — grammar: "Comparative forms without positive bases"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
