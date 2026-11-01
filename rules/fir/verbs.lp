% rules/fir/verbs.lp
% Frisian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 101487: Verbs (n.d.), pages 2, 3, 4, 5, 8
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bruke_type                   brûke
%   c2nd_class_of_weak_verbs     harkje — grammar: "2nd class of weak verbs"
%   hearre_type                  hearre
%   stean_type                   stean
%   fleane_type                  fleane
%   sjen_type                    sjen
%   lizze_type                   lizze
% Irregular (listed in data/verbs.exceptions.tsv): kinne, komme, moatte, rinne, sille, wolle
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
