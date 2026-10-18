% rules/mza/verbs.lp
% Mixteco de Zacatepec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389491: Gramática popular del tacuate (mixteco) de Santa María Zacatepec, Oaxaca (2011), pages 36, 38, 54, 67, 68, 74, 75, 76
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   achi_type                    achi
%   kani_type                    kani
%   ndava_type                   ndava
%   oto_type                     oto, unu, uti
%   verbos_con_prefijo           atu — grammar: "Verbos con prefijo"
%   verbos_sin_prefijo           tiin — grammar: "Verbos sin prefijo"
% Irregular (listed in data/verbs.exceptions.tsv): kichi, koo, ko, kuiin, kusiki, kusu, kuvi, kuun, kuva
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
