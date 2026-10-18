% rules/gug/verbs.lp
% Guarani (Paraguayan) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 166: A Grammar of Paraguayan Guarani (2024), pages 119, 129, 170, 195
%   doc 26814: ¿Cómo hablan los paraguayos con dos lenguas? Gramática del jopara (2016), pages 120
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): a, e, ha'e, ho, ju, u, y'u, yta
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
