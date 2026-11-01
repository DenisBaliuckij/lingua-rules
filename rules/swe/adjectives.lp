% rules/swe/adjectives.lp
% Swedish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 96720: Swedish: An Elementary Grammar-Reader (1980), pages 21, 29, 30, 46, 58, 86, 87, 89, 90, 99, 330, 331
%   doc 388275: Swedish (2005), pages 13, 16, 17
%   doc 388276: Beginning Swedish (1939), pages 53, 54, 60, 67, 69, 84, 112, 114, 115, 226
%   doc 388278: Modern Swedish Grammar (1923), pages 54, 57, 71, 73, 75, 77, 78, 82, 99, 110, 127, 134, 136, 139, 141
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   indefinite_declension        stor, snäll — grammar: "indefinite declension"
%   gammal_type                  gammal
%   ledsen_type                  ledsen
%   vacker_type                  vacker
% Irregular (listed in data/adjectives.exceptions.tsv): liten
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
