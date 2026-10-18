% rules/suc/verbs.lp
% Western Subanon verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289721: A Grammar of Western Subanon (2020), pages 99
%   doc 844603: Western Subanon Grammar (2014), pages 113, 185, 431
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   involuntary_bodily_function  ban — grammar: "Involuntary bodily function"
%   non_concomitant_activity     bobat — grammar: "Non-concomitant activity"
%   voluntary_bodily_function    dula — grammar: "Voluntary bodily function"
%   specific_body_part_initiated_action kapoy — grammar: "Specific body-part-initiated action"
%   locomotion                   languy — grammar: "Locomotion"
%   one_step_position            tongal — grammar: "One-step position"
%   utterance                    towis — grammar: "Utterance"
%   simple_motion                ulali — grammar: "Simple motion"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
