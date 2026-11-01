% rules/chy/nouns.lp
% Cheyenne nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 94352: Let's Talk Cheyenne: Introduction to the Cheyenne Alphabet and Sounds (n.d.), pages 14
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   animate_nouns                hetane — grammar: "animate nouns"
%   inanimate_nouns              hetòhko — grammar: "inanimate nouns"
%   animate_nouns_2              hoestôtse — grammar: "animate nouns"
%   animate_nouns_3              háhnoma — grammar: "animate nouns"
%   animate_nouns_4              héna'e — grammar: "animate nouns"
%   animate_nouns_5              ka'êškóne — grammar: "animate nouns"
%   inanimate_nouns_2            maahe — grammar: "inanimate nouns"
%   animate_nouns_6              mo'éhno'ha — grammar: "animate nouns"
%   inanimate_nouns_3            mâhëö — grammar: "inanimate nouns"
%   animate_nouns_7              mé'êškevôtse — grammar: "animate nouns"
%   animate_nouns_8              náhkohe — grammar: "animate nouns"
%   animate_nouns_9              oeškëso — grammar: "animate nouns"
%   animate_nouns_10             póéso — grammar: "animate nouns"
%   animate_nouns_11             vé'ho'e — grammar: "animate nouns"
%   animate_nouns_12             šé'še — grammar: "animate nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
