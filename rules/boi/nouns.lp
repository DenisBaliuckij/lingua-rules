% rules/boi/nouns.lp
% Barbareño Chumash nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 74936: Topics in Shmuwich Grammar: An Interim Grammar of Barbareño Chumash (2017), pages 58, 59, 60, 109, 113, 152
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   qo_type                      qoʼ
%   wop_type                     wop, yaʼ
%   icantik_type                 ičʼantik, tɨq
%   koko_type                    kokʼo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
