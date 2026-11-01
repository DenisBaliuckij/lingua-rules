% rules/xhu/verbs.lp
% Hurrian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9861: Mood and Modality in Hurrian (2015), pages 53
%   doc 9865: An Introduction to the Hurrian Language (2020), pages 54, 59, 106, 113, 114, 140
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   imperative_paradigm_according_to_wilhelm V — grammar: "Imperative Paradigm according to Wilhelm"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
