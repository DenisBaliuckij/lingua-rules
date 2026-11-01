% rules/thd/verbs.lp
% Kuuk Thaayorre verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389363: A Grammar of Kuuk Thaayorre (2006), pages 119, 168, 170, 172, 174, 175, 234, 235, 241, 333, 371, 381
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   conj1                        path — grammar: "Conj1"
%   conj2                        rirk — grammar: "Conj2"
% Irregular (listed in data/verbs.exceptions.tsv): ke'e, mi'i, ngee, nhaa, ya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
