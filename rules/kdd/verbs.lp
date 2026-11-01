% rules/kdd/verbs.lp
% Yankunytjatjara verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289491: A Semantically-Oriented Grammar of the Yankunytjatjara Dialect of the Western Desert Langu (1983), pages 135, 196
%   doc 388676: A Grammar of Yankunytjatjara (1985), pages 137, 199
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c1_class                     patja — grammar: "1-class"
%   ng_class                     pu — grammar: "ng-class"
%   n_class                      tju — grammar: "n-class"
%   c0_class                     wangka — grammar: "0-class"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
