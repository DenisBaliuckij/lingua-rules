% rules/mai/nouns.lp
% Maithili nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920726: An Introduction to the Maithili Language: A Grammar, Chrestomathy & Vocabulary (1881), pages 23, 36, 70, 71, 74, 75, 76, 77, 78, 79, 82, 85, 86, 91, 92, 94, 96, 106, 110
%   doc 937559: Maithili Grammar (n.d.), pages 16, 17, 23
%   doc 937587: An introduction to the Maithili dialect of the Bihari language as spoken in North Bihar (1870), pages 116, 120
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_i_all_nouns_ending_in_wt nend — grammar: "CLASS I. ALL NOUNS ENDING IN WT &."
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
