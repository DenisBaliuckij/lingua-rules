% rules/gin/nouns.lp
% Hinuq nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3194: A Sketch Grammar of Hinuq (2014), pages 7, 9, 10
%   doc 3196: A Grammar of Hinuq (2011), pages 70, 85, 86, 88, 89, 90, 91, 133, 147, 148, 159, 185, 211, 212, 246, 274, 452
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ketu_type                    k’et’u, boc’e
%   humer_type                   humer
%   ceq_type                     čeq
%   oblique_stem_formation_by_means_of_stres gani, meši — grammar: "Oblique stem formation by means of stress"
%   kecu_type                    k’eču
%   uzi_type                     uži, muži, roži
%   oblique_stem_formation_by_means_of_obliq aqili — grammar: "Oblique stem formation by means of oblique suffixes and modified stems"
%   oblique_stem_formation_by_means_of_obliq_2 žo — grammar: "Oblique stem formation by means of oblique suffixes and modified stems"
%   base_stem_formation_of_nouns_with_conson q’iliqan — grammar: "Base stem formation of nouns with consonant-final stems"
%   buce_type                    buce
%   bune_type                    buňe
%   an_type                      aň
%   bikore_type                  bikore
%   malu_type                    malu
%   moqoli_type                  moqoli
%   obu_type                     obu
%   qartay_type                  qartay
%   xexbe_type                   xexbe
%   zoki_type                    zok’i
%   ce_type                      č’e
% Irregular (listed in data/nouns.exceptions.tsv): beňq’u, beň’q’u, buq, can, essu, iš, ked, rek’ w e, tama, t’eka
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
