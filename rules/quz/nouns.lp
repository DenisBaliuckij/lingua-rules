% rules/quz/nouns.lp
% Quechua (Cuzco) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15313: Grammaire et Dictionnaire français - kichua (1886), pages 4, 5, 8, 11, 12, 13, 14, 15
%   doc 15514: Elementos de gramática de la lengua qheshua (2011), pages 50, 51, 52, 54, 55, 57, 58, 64, 65, 71, 72, 73, 74, 75, 78, 79, 87, 88, 89
%   doc 83713: Gramática Keshua (1970), pages 94, 95, 102, 108, 114, 115, 116, 130
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kunturnii_type               Kunturnii
%   ipaiki_type                  Ipaiki, Suyainiiki, Hueqarniiki
%   terminaciones_de_las_palabras_que_acaban kahuajnin — grammar: "TERMINACIONES DE LAS PALABRAS QUE ACABAN EN CONSONANTE O DIPTONGO"
%   terminaciones_de_las_palabras_que_acaban_2 kahuajniy — grammar: "TERMINACIONES DE LAS PALABRAS QUE ACABAN EN CONSONANTE O DIPTONGO"
%   huaqaininku_type             huaqaininku, qoillurninku, turanku
%   huaqaininkukuna_type         huaqaininkukuna, qoillurninkukuna, turankukuna
%   hueqarniikichijki_type       hueqarniikichijki
%   terminaciones_de_las_palabras_que_acaban_3 kahuajniyqui — grammar: "TERMINACIONES DE LAS PALABRAS QUE ACABAN EN CONSONANTE O DIPTONGO"
%   yachachijni_type             yachachijni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
