% rules/ckb/nouns.lp
% Mukri Kurdish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389842: Sorani Kurdish: A Reference Grammar with Selected Readings (2009), pages 21, 35, 36, 38, 39, 40, 43, 46, 47, 48, 49, 55, 56, 62, 63, 64, 65, 69, 71, 72, 73, 86, 89, 90, 91, 93, 94
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ktaw_type                    ktâw
%   nama_type                    nâma
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
