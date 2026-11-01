% rules/fwe/nouns.lp
% Fwe nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289449: A grammar of Fwe: A Bantu language of Zambia and Namibia (2018), pages 127, 128
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_7                      ci-fwimso — grammar: "class 7"
%   class_12                     ka-nyandi — grammar: "class 12"
%   class_9                      m-buru — grammar: "class 9"
%   class_9_2                    m-pampa — grammar: "class 9"
%   class_1                      mu-ntu — grammar: "class 1"
%   class_9_3                    n-cupa — grammar: "class 9"
%   class_11                     ru-sho-sho — grammar: "class 11"
%   class_1a                     ø-nyati — grammar: "class 1a"
%   class_1a_2                   ø-nzike — grammar: "class 1a"
% Irregular (listed in data/nouns.exceptions.tsv): mu-buru, mu-ruti, n-goma, n-juo, n-ka!mbamo, ru-naka, ru-tango
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
