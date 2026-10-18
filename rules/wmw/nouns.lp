% rules/wmw/nouns.lp
% Mwani nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8102: Mwani Grammatical Sketch (Gramática de Kimwani) (2010), pages 11, 12, 13, 14, 17, 20, 21, 24, 28, 29, 37, 41, 58, 72
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   mwenzi_type                  mwenzi
%   class_11_6                   lukwakwa — grammar: "class 11-6"
%   class_11_6_2                 luwembe — grammar: "class 11-6"
%   class_11_6_3                 luwimbi — grammar: "class 11-6"
%   class_5_6                    rifuko — grammar: "class 5-6"
%   class_5_6_2                  rino — grammar: "class 5-6"
%   class_5_6_3                  ripupa — grammar: "class 5-6"
%   class_5_6_4                  riso — grammar: "class 5-6"
%   class_5_6_5                  rivereko — grammar: "class 5-6"
%   class_5_6_6                  riwe — grammar: "class 5-6"
% Irregular (listed in data/nouns.exceptions.tsv): nduyu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
