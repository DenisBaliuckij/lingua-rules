% rules/ale/verbs.lp
% Aleut verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 898128: Opyt grammatiki aleutsko-lisʹevskago iazyka (1840), pages 34, 43, 44
%   doc 898142: Die Sprache der Aleuten und Fuchsinseln (1884), pages 35, 36, 58, 59, 60, 61, 62, 68, 69, 70, 71, 72, 73, 76, 82, 83
%   doc 898149: Aleut Grammar: Unangam Tunuganaan Achixaasix. A Descriptive Reference Grammar of the Alteu (1997), pages 73
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   igagungn_type                igagüngın
%   nakh_type                    nakh
%   erste_abwandlung             kha — grammar: "Erste Abwandlung"
%   zweite_abwandlung            tcha — grammar: "Zweite Abwandlung"
%   igakhakhing_type             igakhakhing
%   igakukhing_type              igakükhing
%   igalakdkhing_type            igaläkdkhing
%   zweite_abwandlung_2          dükakangüljuk — grammar: "Zweite Abwandlung"
%   dukakuk_type                 dükakuk
%   dukalak_type                 dükaläk
%   der_verbindende_infinitiv_positiv gta — grammar: "Der verbindende Infinitiv. Positiv."
%   mit_einer_conjunction_verbundenen_verpfl igakagung — grammar: "mit einer Conjunction verbundenen verpflichtenden Art"
%   einfacher_infinitiv          igalägangan — grammar: "Einfacher Infinitiv"
%   zweite_abwandlung_3          kagung — grammar: "Zweite Abwandlung"
%   zweite_abwandlung_4          kakhangin — grammar: "Zweite Abwandlung"
%   der_verhindende_infinitiv_negativ lägdgta — grammar: "Der verhindende Infinitiv. Negativ."
%   infinitiv_negativ            lägängan — grammar: "Infinitiv. Negativ."
%   lakak_type                   läkak
%   erste_abwandlung_2           läkangan — grammar: "Erste Abwandlung"
%   nag_nag_uljut_ing_type       näg'nag'üljut'ing
%   zweite_abwandlung_5          dükakang — grammar: "Zweite Abwandlung"
%   zweite_abwandlung_6          tchängan — grammar: "Zweite Abwandlung"
%   gandn_type                   gandn
%   igakhaguljut_ing_type        igakhag’üljut'ing
%   erste_abwandlung_3           khangan — grammar: "Erste Abwandlung"
%   zweite_abwandlung_7          tchängaüljuk — grammar: "Zweite Abwandlung"
%   dukagung_type                dükagung
%   gung_type                    gung
%   einfacher_infinitiv_2        igangen — grammar: "Einfacher Infinitiv"
%   verbindender_infinitiv       igaägta — grammar: "Verbindender Infinitiv"
%   einfacher_imperativ_positiv_erste_abwand da — grammar: "Einfacher Imperativ. Positiv. Erste Abwandlung."
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
