% rules/guc/verbs.lp
% Wayuu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14902: Compendio de la gramática de la lengua wayuu (2017), pages 12, 14, 15, 17, 19, 24, 26, 35, 60, 70, 73
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   chajaa_type                  chajaa
%   nnojoluu_type                nnojoluu
%   putuin_type                  pütüin
%   maa_type                     maa
%   verbos_activos_de_la_segunda_conjugacion achajawaa — grammar: "verbos activos de la segunda conjugación"
%   verbos_activos_de_la_primera_conjugacion apütaa — grammar: "verbos activos de la primera conjugación"
%   primera_conjugacion          ayonnajaa — grammar: "primera conjugación"
%   segunda_conjugacion          a’lakajawaa — grammar: "segunda conjugación"
%   segunda_conjugacion_2        a’yatawaa — grammar: "segunda conjugación"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
