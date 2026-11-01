% rules/arq/adjectives.lp
% Algerian Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626007: Algerian Arabic All in One Learning Book (2021), pages 18, 40, 43, 44, 45, 56, 57, 58, 59, 60, 61
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   hlo_type                     ḣlo
%   kbir_type                    kbīr
%   khdar_type                   khḋar
%   khal_type                    kḣal
%   qsir_type                    qṡīr
%   zraq_type                    zraq
%   hmar_type                    ḣmar
%   sghir_type                   ṡghīr
%   twil_type                    ṫwīl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
