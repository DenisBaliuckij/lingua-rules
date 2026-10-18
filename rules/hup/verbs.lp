% rules/hup/verbs.lp
% Hupa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388420: The Morphology of the Hupa Language (1905), pages 96, 101, 104, 109, 112, 114, 117, 122, 123, 124, 125, 131, 134, 135, 150, 155, 197
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   a_type                       a
%   conjugation_3a               loi — grammar: "Conjugation 3A"
%   kai_type                     kai
%   le_type                      le
%   conjugation_4                tcit — grammar: "Conjugation 4"
%   conjugation_1b               mas — grammar: "Conjugation 1B"
%   conjugation_ld               t-us — grammar: "Conjugation lD"
%   conjugation_1a               xauw — grammar: "Conjugation 1A"
% Irregular (listed in data/verbs.exceptions.tsv): a den ne, na wa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
