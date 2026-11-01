% rules/rmt/nouns.lp
% Domari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389432: A grammatical sketch of Domari (2007), pages 32, 33, 35
%   doc 389433: A Grammar of Domari (2012), pages 150, 151, 162, 234, 270, 272, 273, 274, 275, 277, 278, 279, 305
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   sany_e_type                  sany-e
%   group_1a                     dOm — grammar: "Group 1a"
%   group_9                      dZuwir — grammar: "Group 9"
%   group_5                      dir — grammar: "Group 5"
%   group_1d                     malik — grammar: "Group 1d"
%   group_1b                     manus — grammar: "Group 1b"
%   group_1c                     mwa — grammar: "Group 1c"
%   group_4a                     xudwar — grammar: "Group 4a"
%   group_8                      Jamba — grammar: "Group 8"
%   group_4b                     bustiin — grammar: "Group 4b"
%   group_7                      dOmiya — grammar: "Group 7"
%   group_2                      sana — grammar: "Group 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
