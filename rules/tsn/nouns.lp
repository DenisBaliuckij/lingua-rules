% rules/tsn/nouns.lp
% Tswana nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 476570: Introduction to Tswana (1953), pages 81, 85, 100
%   doc 844704: Setswana Grammar Manual (2011), pages 26, 28, 115, 116, 117
%   doc 844710: An Introduction to Spoken Setswana (1987), pages 185, 338, 384, 396, 431
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_3                      Ieoto — grammar: "Class 3"
%   class_7                      bosigo — grammar: "Class 7"
%   noun_class_1                 monna — grammar: "Noun Class 1"
%   class_1                      motswana — grammar: "Class 1"
%   noun_class_5                 nku — grammar: "Noun Class 5"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
