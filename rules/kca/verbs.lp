% rules/kca/verbs.lp
% Khanty verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388200: A Grammar of Eastern Khanty (2007), pages 103, 107, 149, 286, 290, 291, 293, 294
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   subjective_conjugation       mən — grammar: "Subjective Conjugation"
%   transitive_verb              we — grammar: "transitive verb"
%   passive_voice                por — grammar: "passive voice"
%   past_2_tense_target_objective_definite wel — grammar: "Past(2) Tense Target (Objective/Definite)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
