% rules/run/nouns.lp
% Rundi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73916: Kirundi Basic Course: Student Text (1960), pages 19, 83, 498
%   doc 73936: Kinyarwanda and Kirundi Comparative Grammar (2007), pages 35, 140, 181, 183, 199, 203, 204, 206, 332
%   doc 93529: Apprendre la langue Rwanda (1975), pages 101, 261, 311
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   arrondissement_type          arrondissement
%   commune_type                 commune
%   province_type                province
%   class_1                      administrateur — grammar: "Class 1"
%   class_1_2                    bourgmestre — grammar: "Class 1"
%   class_1_3                    gouverneur — grammar: "Class 1"
%   class_1_4                    ministre — grammar: "Class 1"
%   group_11_nouns_with_consonant_stems ukuuntu — grammar: "Group 11 Nouns with Consonant Stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
