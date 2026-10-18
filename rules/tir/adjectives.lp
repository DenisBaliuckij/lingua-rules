% rules/tir/adjectives.lp
% Tigrinya adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103933: Documents Tigrigna (Ethiopien Septentrional): Grammaire et Textes (1941), pages 27, 31, 34, 42, 43, 45, 47, 49, 51, 54, 56, 59, 60, 69
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectif_demonstratif_pour_des_objets_el aJtu — grammar: "Adjectif demonstratif pour des objets eloignes"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
