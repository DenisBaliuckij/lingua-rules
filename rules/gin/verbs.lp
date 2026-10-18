% rules/gin/verbs.lp
% Hinuq verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3194: A Sketch Grammar of Hinuq (2014), pages 7, 9, 10
%   doc 3196: A Grammar of Hinuq (2011), pages 70, 85, 86, 88, 89, 90, 91, 133, 147, 148, 159, 185, 211, 212, 246, 274, 452
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): goì, iň’i- ‘go, iƛ’i- ‘go
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
