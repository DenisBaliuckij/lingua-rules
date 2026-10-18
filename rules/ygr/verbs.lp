% rules/ygr/verbs.lp
% Yagaria verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289427: A Grammar of Yagaria (1975), pages 108, 109, 112, 122, 125, 129
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_2                      do — grammar: "Class 2"
%   class_4                      hao — grammar: "Class 4"
%   class_3                      bei — grammar: "Class 3"
%   class_1                      eli, havi, fili — grammar: "Class 1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
