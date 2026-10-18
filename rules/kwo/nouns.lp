% rules/kwo/nouns.lp
% Kwomtari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38397: Kwomtari Phonology and Grammar Essentials (2008), pages 68, 76, 79, 112, 113
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kinship_nouns                aie — grammar: "kinship nouns"
%   kinship_nouns_2              ape — grammar: "kinship nouns"
%   kinship_nouns_3              mie — grammar: "kinship nouns"
%   kinship_nouns_4              ambue — grammar: "kinship nouns"
%   kinship_nouns_5              auteli — grammar: "kinship nouns"
%   kinship_nouns_6              inali — grammar: "kinship nouns"
%   kinship_nouns_7              kapore — grammar: "kinship nouns"
%   kinship_nouns_8              lufwa — grammar: "kinship nouns"
%   kinship_nouns_9              raaroo — grammar: "kinship nouns"
%   kinship_nouns_10             wofoli — grammar: "kinship nouns"
%   kinship_nouns_11             womoo — grammar: "kinship nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
