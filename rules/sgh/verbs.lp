% rules/sgh/verbs.lp
% Shughni verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389170: Shughni (2017), pages 9, 15, 16
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   intransitive                 ti — grammar: "intransitive"
%   intransitive_2               saw — grammar: "intransitive"
%   intransitive_3               vi — grammar: "intransitive"
%   transitive_conjugation       azer — grammar: "transitive conjugation"
%   transitive_conjugation_2     kin — grammar: "transitive conjugation"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
