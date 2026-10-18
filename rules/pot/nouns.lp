% rules/pot/nouns.lp
% Potawatomi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9874: How the Potawatomi Language Lives: A Grammar of Potawatomi (2017), pages 71, 73, 100, 118, 134, 135, 136, 147, 148, 149, 152, 153, 154, 156, 157, 158, 161, 164, 169, 172, 174, 176
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   c_final                      wdabyan — grammar: "/C/ final"
%   amo_type                     amo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
