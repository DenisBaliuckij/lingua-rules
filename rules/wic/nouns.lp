% rules/wic/nouns.lp
% Wichita nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28: Grammaire du wichi : phonologie et morphosyntaxe (2009), pages 84, 85, 86, 106, 254
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   paradigma_1_de_prefijos_posesivos k'oli — grammar: "Paradigma 1 de prefijos posesivos"
%   paradigma_1                  os — grammar: "Paradigma 1"
%   paradigma_2                  k'ule — grammar: "Paradigma 2"
%   paradigma_3                  Vey — grammar: "Paradigma 3"
%   halo_type                    halo
%   kyonis_type                  kYonis
%   qanhe_type                   qanhe
%   sinho_type                   sinho
%   tasi_type                    tasi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
