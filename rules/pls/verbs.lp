% rules/pls/verbs.lp
% Ngigua de San Marcos Tlacoyalco verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388242: Gramática ngigua de San Marcos Tlacoyalco (2011), pages 45, 46, 47, 48, 51, 52, 57, 58
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   e_type                       e
%   grupo_2                      ginga, gikon — grammar: "grupo 2"
%   chee_type                    cheꞌe
%   grupo_1                      kjano — grammar: "grupo 1"
%   chunda_type                  chunda, nichja, tsjanga
%   grupo_2_verbos_que_empiezan_con_g gajon — grammar: "Grupo 2 (verbos que empiezan con g)"
%   grupo_2_2                    gajón, gakeꞌe — grammar: "grupo 2"
%   grupo_1_verbos_que_empiezan_con_k kani — grammar: "Grupo 1 (verbos que empiezan con k)"
%   grupo_1_2                    kjeen — grammar: "grupo 1"
%   grupo_1_3                    kji — grammar: "grupo 1"
%   grupo_3_otros_verbos         tsje — grammar: "Grupo 3 (otros verbos)"
% Irregular (listed in data/verbs.exceptions.tsv): comer, dormir, hacer, jine, kii, llegar, llevar, ncheꞌe, obedecer, querer, rinao, ser ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
