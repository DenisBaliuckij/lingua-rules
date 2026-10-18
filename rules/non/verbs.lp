% rules/non/verbs.lp
% Old Norse verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388602: A New Introduction to Old Norse: Part I - Grammar (2008), pages 59, 61, 63, 73, 75, 77, 79, 116, 123, 130, 185, 186, 187, 188, 189
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_verb_type_3             brenna — grammar: "Weak verb (type 3)"
%   weak_verb_type_2             flakka — grammar: "Weak verb (type 2)"
%   weak_verb_type_1             berja — grammar: "Weak verb (type 1)"
%   weak_verb_type_1_2           berjask — grammar: "Weak verb (type 1)"
% Irregular (listed in data/verbs.exceptions.tsv): mega, sjá, vera
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
