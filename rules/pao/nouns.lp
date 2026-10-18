% rules/pao/nouns.lp
% Northern Paiute nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68698: A Northern Paiute Grammar with Texts (2003), pages 125, 158, 441
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   reduplicative                moko?ni — grammar: "REDUPLICATIVE"
%   suffixal                     naa — grammar: "SUFFIXAL"
%   suffixal_2                   padi — grammar: "SUFFIXAL"
%   reduplicative_2              tsia?a — grammar: "REDUPLICATIVE"
%   suffixal_3                   tua — grammar: "SUFFIXAL"
%   reduplicative_3              tuibitsi?i — grammar: "REDUPLICATIVE"
%   suffixal_4                   woho — grammar: "SUFFIXAL"
% Irregular (listed in data/nouns.exceptions.tsv): naatsi, nana
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
