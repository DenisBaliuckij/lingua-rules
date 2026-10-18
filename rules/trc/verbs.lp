% rules/trc/verbs.lp
% Trique (Copala) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388588: Gramática popular del triqui de Copala: San Juan Copala, Oaxaca (2008), pages 46, 196
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   tono_3_1                     aman³ — grammar: "TONO 3 → 1"
%   combinacion_31_1             anaa̱n³¹ — grammar: "COMBINACIÓN 31 → 1"
%   combinacion_31_1_2           anuu̱³¹ — grammar: "COMBINACIÓN 31 → 1"
%   tono_3_13                    araa³ — grammar: "TONO 3 → 13"
%   combinacion_31_1_3           naa̱n³¹ — grammar: "COMBINACIÓN 31 → 1"
%   tono_3_1_2                   naca³, nano³ — grammar: "TONO 3 → 1"
%   tono_3_13_2                  naj³ — grammar: "TONO 3 → 13"
%   tono_3_13_3                  ne³ — grammar: "TONO 3 → 13"
%   tono_3_13_4                  noco³ — grammar: "TONO 3 → 13"
%   tono_3_13_5                  taman³ — grammar: "TONO 3 → 13"
%   tono_3_13_6                  uno³ — grammar: "TONO 3 → 13"
%   tono_3_13_7                  uun³ — grammar: "TONO 3 → 13"
%   tono_3_1_3                   na³ — grammar: "TONO 3 → 1"
%   tono_3_13_8                  achiin³ — grammar: "TONO 3 → 13"
%   tono_3_1_4                   avi³ — grammar: "TONO 3 → 1"
%   tono_3_13_9                  navij³ — grammar: "TONO 3 → 13"
%   tono_3_1_5                   ri³ — grammar: "TONO 3 → 1"
%   tono_3_1_6                   ruvi³ — grammar: "TONO 3 → 1"
%   tono_3_13_10                 ticavi³ — grammar: "TONO 3 → 13"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
