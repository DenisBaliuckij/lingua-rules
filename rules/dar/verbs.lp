% rules/dar/verbs.lp
% Mehweb verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16842: The Mehweb language: Essays on phonology, morphology and syntax (2019), pages 68, 69, 75, 96, 108, 115, 117, 141, 276
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   caused_motion_verbs          kes, χes — grammar: "caused motion verbs"
%   fly_type                     fly
%   experiencer_verbs            arʁes — grammar: "experiencer verbs"
%   experiencer_verbs_2          gʷes — grammar: "experiencer verbs"
% Irregular (listed in data/verbs.exceptions.tsv): ak’as ‘come, arces ‘fly, elč’es ‘read, ik’ʷes ‘put on, uˤq’es
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
