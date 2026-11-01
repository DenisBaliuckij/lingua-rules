% rules/quz/verbs.lp
% Quechua (Cuzco) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15313: Grammaire et Dictionnaire français - kichua (1886), pages 4, 5, 8, 11, 12, 13, 14, 15
%   doc 15514: Elementos de gramática de la lengua qheshua (2011), pages 50, 51, 52, 54, 55, 57, 58, 64, 65, 71, 72, 73, 74, 75, 78, 79, 87, 88, 89
%   doc 83713: Gramática Keshua (1970), pages 94, 95, 102, 108, 114, 115, 116, 130
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   koy_type                     koy
%   puriy_type                   puriy
%   kaskai_type                  kaskai
%   cuya_type                    cuya, ca
%   punui_type                   puñui
%   kani_type                    kani
%   munai_type                   munai
%   pununa_type                  puñuna
%   cay_type                     cay
%   cuyasca_type                 cuyasca
%   conjugacion_pasiva           rikuy — grammar: "Conjugación pasiva"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
