% rules/mbq/verbs.lp
% Maisin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 824388: Maisin: a grammatical description of an Oceanic language in Papua New Guinea (2014), pages 51, 87, 89, 90, 106, 136, 137
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_1_consonant_initial_stems ramara — grammar: "Class 1: Consonant-initial stems"
% Irregular (listed in data/verbs.exceptions.tsv): come, go across, go down, go in, go up
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
