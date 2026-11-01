% rules/fut/verbs.lp
% Futuna-Aniwa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 897695: West Futuna-Aniwa: An Introduction to a Polynesian Outlier Language (1987), pages 41, 73, 97, 98, 353, 423
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   tama_type                    tama
%   ni_type                      ni
%   marker_of_present_inceptive_habitual_ten ko — grammar: "Marker of present, inceptive, habitual tense or narrative present"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
