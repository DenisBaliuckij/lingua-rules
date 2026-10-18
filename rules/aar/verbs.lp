% rules/aar/verbs.lp
% Afar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289396: L’afar : description grammaticale d’une langue couchitique (Djibouti, Erythrée et Ethiopie (2015), pages 179, 181, 185, 186, 189, 191, 232, 300, 301, 302, 303, 304, 305, 306, 308, 309, 310, 316, 318, 319, 321, 322, 323
%   doc 296344: A Generative Grammar Study of Afar (1977), pages 204, 212, 324, 325, 337
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   en_type                      en
%   types_i_et_ii                ifiilé, usguudé, afiilé, amaaté ... — grammar: "types I et II"
%   verbe_de_type_ii             yaabé — grammar: "Verbe de type II"
%   ab_type                      ab
%   type_ii                      abé — grammar: "type II"
%   types_i_et_ii_2              asguudé — grammar: "types I et II"
%   type_iii                     bulħiní — grammar: "type III"
%   type_i                       eeɖegé — grammar: "type I"
%   type_iii_2                   umá — grammar: "type III"
%   type_ii_2                    yaabá — grammar: "type II"
%   type_ii_3                    abá — grammar: "type II"
%   type_ii_4                    irgiʕé — grammar: "Type II"
%   dagi_type                    dagi
%   type_ii_5                    geɖé — grammar: "Type II"
%   rabe_type                    rabé
% Irregular (listed in data/verbs.exceptions.tsv): eɖħé
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
