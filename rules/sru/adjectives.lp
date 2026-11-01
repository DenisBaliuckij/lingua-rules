% rules/sru/adjectives.lp
% Suruí (Paiter) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93677: Descrevendo a língua dos Paiter ej (Suruí de Rondônia): contribuições de um falante nativo (2020), pages 89, 91, 92, 93
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   kuj_type                     kuj
%   pereip_type                  pereip
%   poj_type                     poj
%   xin_type                     xin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
