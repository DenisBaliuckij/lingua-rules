% rules/lhm/nouns.lp
% Lhomi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 37697: A Grammar Sketch of Lhomi (2016), pages 40, 67, 75, 76
%   doc 37698: Clause Patterns in Lhomi (1980), pages 27, 28
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   animate_noun                 luk — grammar: "animate noun"
%   animate_noun_2               daku — grammar: "animate noun"
%   inanimate_noun               khim, laakor — grammar: "inanimate noun"
%   animate_noun_3               phitsa — grammar: "animate noun"
%   mi_type                      mi
%   th_type                      tɕh-ʏ
%   chuq_type                    chuq
%   inanimate_noun_2             tɕhu — grammar: "inanimate noun"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
