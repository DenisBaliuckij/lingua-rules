% rules/sw/nouns.lp
% Swahili nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103435: Grammaire Kiswahili (1927), pages 25
%   doc 844314: Swahili Language Handbook (1967), pages 125, 136, 143, 168
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   baba_type                    baba
%   mwenzi_type                  mwenzi
%   wenzi_type                   wenzi
%   classe_iv                    kisu — grammar: "CLASSE IV"
%   classe_ii                    mri — grammar: "CLASSE II"
%   classe_i                     mtu — grammar: "CLASSE I"
%   classe_iii                   nyota — grammar: "CLASSE III"
%   classe_v                     tawi — grammar: "CLASSE V"
%   classe_vi                    wembe — grammar: "CLASSE VI"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
