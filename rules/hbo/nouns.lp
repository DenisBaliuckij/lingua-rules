% rules/hbo/nouns.lp
% Hebrew nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73034: An Introduction to Biblical Hebrew Syntax (1990), pages 121, 245
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   hm_a_type                    hM'a
%   cardinal_three_ten           h['v.Ti — grammar: "Cardinal 'Three-Ten'"
%   ha_me_type                   ha'me
%   cardinal_three_ten_2         hn"mov — grammar: "Cardinal 'Three-Ten'"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
