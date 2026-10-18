% rules/fuc/verbs.lp
% Pulaar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19521: Précis de grammaire et de lexique du peul du Fouta Djallon (2015), pages 77, 83, 84, 91, 92, 102, 103, 123, 124, 173
%   doc 841997: Pulaar Language Manual (1987), pages 7, 8
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   imperfectif_iii_futur_habituel_affirmati winndagol — grammar: "Imperfectif III: Futur-habituel (affirmation et négation)"
%   imperfectif_iii_futur_habituel_affirmati_2 winndegol — grammar: "Imperfectif III: Futur-habituel (affirmation et négation)"
%   imperfectif_iii_futur_habituel_affirmati_3 winndugol — grammar: "Imperfectif III: Futur-habituel (affirmation et négation)"
%   subjonctif_actif             dawugol — grammar: "subjonctif actif"
%   subjonctif_moyen             lootagol — grammar: "subjonctif moyen"
%   subjonctif_passif            ɗowtegol — grammar: "subjonctif passif"
%   wuuugol_type                 wuuɗugol
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
