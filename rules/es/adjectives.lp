% rules/es/adjectives.lp
% Spanish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 83710: Gramática de la lengua castellana (1741), pages 56, 59, 61, 63, 65, 66, 67, 68, 74, 75, 77, 86, 89, 90, 93, 95, 97, 107, 109, 110, 113, 114
%   doc 109734: Grammaire complète de la langue espagnole d'après celle de la Royale Académie de Madrid, a (n.d.), pages 61, 74, 83, 84, 85, 86, 89, 94, 96, 98, 100, 101, 102, 105, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122
%   doc 388678: A New Reference Grammar of Modern Spanish (1994), pages 66, 180, 186, 187, 189, 192, 194, 196, 197, 199, 200, 201, 202, 203, 204, 210, 212, 213, 214, 215, 216, 218
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   type_1_adjectives            andaluz — grammar: "type 1 adjectives"
%   type_1_adjectives_2          aragones, espanol, hablador, mandon ... — grammar: "type 1 adjectives"
%   type_1_adjectives_3          bueno, regordete — grammar: "type 1 adjectives"
%   type_1_adjectives_4          saltarin — grammar: "type 1 adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
