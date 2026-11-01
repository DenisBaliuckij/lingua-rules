% rules/gmh/nouns.lp
% Middle High German nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 942390: Introduction to Middle High German: a reader and grammar (1900), pages 51, 53, 54, 55, 64
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ja_declension_of_neuter_nouns bild — grammar: "ja-declension of neuter nouns"
%   ja_declension_of_neuter_nouns_2 gelücke — grammar: "ja-declension of neuter nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
