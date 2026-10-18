% rules/tuk/nouns.lp
% Turkmen nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70550: Türkmen Türkçesi Grameri (2015), pages 110, 119, 125, 127, 128, 130, 131, 138, 147, 148, 151, 160, 161
%   doc 389586: A Short Descriptive Grammar of the Turkmen Language (1994), pages 8, 9, 10, 12, 13, 15, 16, 17, 18, 19, 20, 21, 24, 28, 29
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dilci_type                   dilçi
%   eje_type                     eje
%   gus_type                     guş
%   masyn_type                   maşyn
%   soz_type                     söz
%   cekic_type                   çekiç
%   ordek_type                   ördek
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
