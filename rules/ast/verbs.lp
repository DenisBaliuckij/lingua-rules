% rules/ast/verbs.lp
% Asturian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 295798: Gramática de la Llingua Asturiana: Morfoloxía (2001), pages 103, 104, 143, 200, 228
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbos_en_y_er_y_en_y_ir     caer, traer — grammar: "verbos en -(y)er y en -(y)ir"
%   verbos_en_y_er_y_en_y_ir_2   cayer, creer, creyer, trayer ... — grammar: "verbos en -(y)er y en -(y)ir"
%   verbos_en_y_er_y_en_y_ir_3   influir — grammar: "verbos en -(y)er y en -(y)ir"
%   verbos_en_y_er_y_en_y_ir_4   influyir — grammar: "verbos en -(y)er y en -(y)ir"
%   verbos_en_y_er_y_en_y_ir_5   raer — grammar: "verbos en -(y)er y en -(y)ir"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
