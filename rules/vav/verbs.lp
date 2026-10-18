% rules/vav/verbs.lp
% Varli verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388713: Varli Phonology and Grammar Sketches (2012), pages 51, 52, 54, 66, 70, 71, 74, 75
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   auxiliary_verb               sək — grammar: "auxiliary verb"
%   di_type                      diː
%   bih_type                     bih
%   kha_type                     kʰa
%   khe_type                     kʰeɭ
%   ni_type                      niːɟ
% Irregular (listed in data/verbs.exceptions.tsv): to be, ɟa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
