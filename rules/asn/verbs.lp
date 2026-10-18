% rules/asn/verbs.lp
% Asurini do Xingu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388919: Gramática Asurini: aspectos de uma gramática transformacional e discursos monologados da l (1976), pages 29, 109, 110
%   doc 389867: Aspectos da Língua Assurini (n.d.), pages 6, 7, 9, 10, 14, 15, 16, 17, 18, 19, 21, 23, 24, 35, 38, 42
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ety_arahy_type               ety'arahy
%   horywete_type                horywete
%   verbos_transitivos_em_oracoes_independen aapo, aken — grammar: "verbos transitivos em orações independentes"
%   tema_verbal_termina_em_duas_vogais apokai.ta — grammar: "tema verbal termina em duas vogais"
%   verbos_transitivos_em_oracoes_independen_2 aron — grammar: "verbos transitivos em orações independentes"
%   tema_verbal_termina_numa_vogal atao — grammar: "tema verbal termina numa vogal"
%   oeron_type                   oeron
%   tema_verbal_termina_em_consoante_nasal ohem — grammar: "tema verbal termina em consoante nasal"
%   osa_type                     osa
%   osoka_type                   osoka
%   tema_verbal_termina_em_consoante_nasal_2 osym — grammar: "tema verbal termina em consoante nasal"
% Irregular (listed in data/verbs.exceptions.tsv): aha, asan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
