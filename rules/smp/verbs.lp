% rules/smp/verbs.lp
% Samaritan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 853998: A grammar of the Samaritan language, with extracts and vocabulary (1875), pages 59, 60, 66, 70, 71, 78, 81
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   quiescents_of_second_class_in_vau_or_ayi up — grammar: "QUIESCENTS OF SECOND CLASS. In Vau, or Ayin-Vau."
%   yna_type                     yna
% Irregular (listed in data/verbs.exceptions.tsv): xgy he was
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
