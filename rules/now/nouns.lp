% rules/now/nouns.lp
% Runyambo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 26467: A Grammar of Runyambo (2005), pages 27, 28, 31, 34, 67
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_11                     oruhiji — grammar: "Class 11"
%   class_11_2                   oruhu — grammar: "Class 11"
%   class_12                     akanyabajere — grammar: "Class 12"
%   class_12_2                   akanyampira — grammar: "Class 12"
%   class_12_3                   akasênda — grammar: "Class 12"
%   class_12_4                   akasíisi — grammar: "Class 12"
%   class_12_5                   akaziizi — grammar: "Class 12"
%   class_12_diminutive          ecintu — grammar: "Class 12 diminutive"
%   class_12_diminutive_2        ente — grammar: "Class 12 diminutive"
%   class_15                     okuguru — grammar: "Class 15"
%   class_15_2                   okúju — grammar: "Class 15"
%   class_15_3                   okútu — grammar: "Class 15"
%   class_12_diminutive_3        omukázi — grammar: "Class 12 diminutive"
%   class_11_3                   orufu — grammar: "Class 11"
%   class_11_4                   orugusyo — grammar: "Class 11"
%   class_11_5                   orugóye — grammar: "Class 11"
%   class_11_6                   oruhíta — grammar: "Class 11"
%   class_11_7                   orurera — grammar: "Class 11"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
