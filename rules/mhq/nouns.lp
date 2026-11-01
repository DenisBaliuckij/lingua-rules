% rules/mhq/nouns.lp
% Mandan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 379: A grammar of Mandan (2024), pages 226, 418, 423, 435
%   doc 651570: Mandan Grammar (1923), pages 8, 10, 13, 17, 27, 29
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   high                         istá — grammar: "High"
%   alienable_possession_paradigms ptíire — grammar: "Alienable possession paradigms"
%   alienable_possession_paradigms_2 ptóominik — grammar: "Alienable possession paradigms"
%   default                      shí — grammar: "Default"
%   non_high                     éekhuu — grammar: "Non-High"
%   resonant                     réesik — grammar: "Resonant"
%   menis_type                   menis
%   pa_xu_type                   pa'xu
%   type_1                       tami'he — grammar: "Type 1"
%   type_2                       tq'ka, tu'miniks — grammar: "Type 2"
%   type_2_2                     tu'ts — grammar: "Type 2"
%   type_1_2                     wa'ratos — grammar: "Type 1"
%   type_1_3                     wi'hqjca — grammar: "Type 1"
%   type_1_4                     wa'ratoxkas — grammar: "Type 1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
