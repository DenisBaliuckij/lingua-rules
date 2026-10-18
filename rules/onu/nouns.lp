% rules/onu/nouns.lp
% Unua nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895461: A Grammar of Unua (2015), pages 54, 64, 134, 152, 157, 161, 244
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bbusi_bbusi_type             bbusi-bbusi
%   direct_possession            naxo — grammar: "Direct Possession"
% Irregular (listed in data/nouns.exceptions.tsv): tinvavi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
