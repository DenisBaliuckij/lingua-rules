% rules/kue/verbs.lp
% Kuman verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289701: Grammatik der Kuman Sprache Gesprochen in der Gegend des Chimbuflusses im Zentral Hochland (1964), pages 44, 54, 60, 65, 66, 67, 68, 89, 95, 101, 102, 110, 135
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kan_type                     kan
%   pi_type                      pi
%   mogl_type                    mogl
%   ere_type                     ere
%   hortativ                     kanagla — grammar: "Hortativ"
%   piri_type                    piri
%   emphatische_hortativ         kanagle — grammar: "emphatische Hortativ"
%   formen_auf_kande             kangande — grammar: "Formen auf -kande"
%   die_type                     die
%   formen_auf_endi              kandinaglendi — grammar: "Formen auf -endi"
%   eventualis_mit_futur         dindinalka — grammar: "Eventualis mit Futur"
%   eventualis_mit_imperativ_futur dindinagla — grammar: "Eventualis mit Imperativ Futur"
% Irregular (listed in data/verbs.exceptions.tsv): kera' l - ker
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
