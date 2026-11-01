% rules/nmy/nouns.lp
% Namuyi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14875: A Descriptive Grammar of Namuyi Khatho spoken by Namuyi Tibetans (2017), pages 360, 402, 413, 419, 437, 557
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inanimate                    jy³³ — grammar: "Inanimate"
%   inanimate_2                  lu⁵⁴, mu⁵⁴, ndzə⁵⁴ — grammar: "Inanimate"
%   inanimate_3                  ɕə²¹ — grammar: "Inanimate"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
