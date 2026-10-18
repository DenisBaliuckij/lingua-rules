% rules/wsa/nouns.lp
% Warembori nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 29631: Warembori Grammar Sketch (1999), pages 18, 26, 35
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   set_i                        bera — grammar: "Set I"
%   mena_type                    mena
%   set_ii                       wa — grammar: "Set II"
%   suan_type                    suan
% Irregular (listed in data/nouns.exceptions.tsv): nai
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
