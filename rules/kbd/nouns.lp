% rules/kbd/nouns.lp
% Kabardian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388908: A Short Grammar of Kabardian (2009), pages 22, 52, 71
%   doc 820832: A Short Grammar of East Circassian (Kabardian) (2010), pages 18, 25, 46, 64, 89
%   doc 852567: A Grammar of the Kabardian Language (1992), pages 80, 94, 95
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vowel_final_stem             gyaata — grammar: "Vowel final stem"
%   class_type                   джатэ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
