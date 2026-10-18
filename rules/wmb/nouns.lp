% rules/wmb/nouns.lp
% Wambaya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93308: A grammar of Wambaya, Northern Territory (Australia) (2001), pages 86, 126, 127, 146, 176, 178
%   doc 389146: A Grammar of Wambaya (1993), pages 156, 168, 177, 178, 211, 212, 214, 215
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_ii_kinship_nouns       babanya — grammar: "Class II kinship nouns"
%   class_ii_kinship_nouns_2     gugunya — grammar: "Class II kinship nouns"
%   class_ii_kinship_nouns_3     gujinya — grammar: "Class II kinship nouns"
%   class_ii_kinship_nouns_4     gulinya — grammar: "Class II kinship nouns"
%   class_ii_kinship_nouns_5     jajilinya — grammar: "Class II kinship nouns"
%   class_ii_kinship_nouns_6     ngayijinya — grammar: "Class II kinship nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
