% rules/asn/adjectives.lp
% Asurini do Xingu adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388919: Gramática Asurini: aspectos de uma gramática transformacional e discursos monologados da l (1976), pages 29, 109, 110
%   doc 389867: Aspectos da Língua Assurini (n.d.), pages 6, 7, 9, 10, 14, 15, 16, 17, 18, 19, 21, 23, 24, 35, 38, 42
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   paradigma_de_descritor_regular NoŽà — grammar: "Paradigma de Descritor Regular"
%   paradigma_de_descritor_regular_2 wiceoho — grammar: "Paradigma de Descritor Regular"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
