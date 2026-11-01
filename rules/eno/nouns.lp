% rules/eno/nouns.lp
% Enggano nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 100571: Grammatical sketch of Enggano (2020), pages 11, 12
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   human_ii                     PaPa — grammar: "human II"
%   human_ii_2                   Pũpu — grammar: "human II"
%   human_ii_3                   ama — grammar: "human II"
%   other                        baba — grammar: "other"
%   human_ii_4                   dadu — grammar: "human II"
%   human_ii_5                   hona — grammar: "human II"
%   human_i                      huda — grammar: "human I"
%   other_2                      kaka — grammar: "other"
%   other_3                      kuO — grammar: "other"
%   human_ii_6                   naE — grammar: "human II"
% Irregular (listed in data/nouns.exceptions.tsv): eara, ekãpu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
