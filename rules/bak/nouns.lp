% rules/bak/nouns.lp
% Bashkir nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46627: Bashkir Manual: Descriptive Grammar and Texts with a Bashkir-English Glossary (1962), pages 23, 25, 27, 29, 33, 43
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   бала
%   class_type_2                 еҫ
%   class_type_3                 кеше
%   lat_type                     lat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
