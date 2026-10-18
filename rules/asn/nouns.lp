% rules/asn/nouns.lp
% Asurini do Xingu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388919: Gramática Asurini: aspectos de uma gramática transformacional e discursos monologados da l (1976), pages 29, 109, 110
%   doc 389867: Aspectos da Língua Assurini (n.d.), pages 6, 7, 9, 10, 14, 15, 16, 17, 18, 19, 21, 23, 24, 35, 38, 42
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   tema_que_comeca_com_vogal_exceto_y_ou_t aga — grammar: "tema que começa com vogal (exceto y) ou t"
%   tema_que_nao_comeca_com_vogal_ou_t paa — grammar: "tema que não começa com vogal ou t"
%   tema_que_comeca_com_vogal_exceto_y_ou_t_2 tyroa — grammar: "tema que começa com vogal (exceto y) ou t"
%   tema_que_comeca_com_y        yhara — grammar: "tema que começa com y"
%   substantivos_regulares       Neha — grammar: "Substantivos Regulares"
%   substantivos_regulares_2     Noc — grammar: "Substantivos Regulares"
%   substantivos_regulares_3     ci — grammar: "Substantivos Regulares"
% Irregular (listed in data/nouns.exceptions.tsv): Namoc, Nope, Now, cari, hà, Žaŋ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
