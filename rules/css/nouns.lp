% rules/css/nouns.lp
% Mutsun nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389442: Extracto de la gramatica mutsun (1861), pages 20, 21, 22, 23, 24, 28, 36, 37, 42
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   anan_type                    Anan
%   appa_type                    Appa
%   declinacion_triptota         Tocolósmin — grammar: "Declinacion triptota"
%   mucurma_type                 Mucurma
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
