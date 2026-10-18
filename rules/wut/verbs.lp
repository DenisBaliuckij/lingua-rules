% rules/wut/verbs.lp
% Wutung verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38010: Topics in the Phonology and Morphology of Wutung (2010), pages 281, 284, 323, 340, 356, 365
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   double_inflecting            qa — grammar: "double-inflecting"
%   ha_type                      ha
%   qai_type                     qai
%   haqa_type                    haqa
%   invariant                    ungwa — grammar: "invariant"
%   subj_inflecting              ley — grammar: "subj.-inflecting"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
