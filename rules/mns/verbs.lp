% rules/mns/verbs.lp
% Vogul verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 75031: Vogul (2001), pages 25, 26, 29, 30, 32, 33, 34, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54, 55
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   war_type                     wār
%   indeterminate_conjugation    min, lowińt, rupit — grammar: "indeterminate conjugation"
%   ol_type                      ōl
%   passive_narrative_past       tot — grammar: "Passive Narrative Past"
%   determinate_conjugation      ś — grammar: "Determinate Conjugation"
%   sopit_type                   śopit
%   determinate_conjugation_2    χańiśl· — grammar: "determinate conjugation"
%   indeterminate_conjugation_2  joχt — grammar: "Indeterminate Conjugation"
%   indeterminate_conjugation_3  ōl· — grammar: "Indeterminate Conjugation"
% Irregular (listed in data/verbs.exceptions.tsv): tē
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
