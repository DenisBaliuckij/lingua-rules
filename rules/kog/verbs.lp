% rules/kog/verbs.lp
% Cogui verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 840816: Puntos básicos de la gramática de cogui (1976), pages 6, 7, 10, 18
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   la_type                      la
%   verbo_de_estado              cu-a — grammar: "verbo de estado"
%   gu_ainiqui_type              gu-ainiqui
%   na_gu_type                   na-gu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
