% rules/kms/nouns.lp
% Kamasau (Wand Tuan) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 85123: Kamasau (Wand Tuan) Grammar: Morpheme to Sentence (1994), pages 7, 10, 12, 13
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kinship_terms                bar, mem, qam — grammar: "Kinship Terms"
%   kinship_terms_2              mom — grammar: "Kinship Terms"
%   kinship_terms_3              moyu — grammar: "Kinship Terms"
%   kinship_terms_4              nyimi — grammar: "Kinship Terms"
%   kinship_terms_5              nyumbu — grammar: "Kinship Terms"
%   kinship_terms_6              wau, wonyimi, wonyumbu — grammar: "Kinship Terms"
%   kinship_terms_7              wuyi — grammar: "Kinship Terms"
%   kinship_terms_8              yai — grammar: "Kinship Terms"
%   kinship_terms_9              yine — grammar: "Kinship Terms"
%   kinship_terms_10             koku — grammar: "Kinship Terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
