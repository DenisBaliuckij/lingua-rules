% rules/quc/verbs.lp
% K'iche' verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70545: Basic K'ichee' Grammar: Thirty-Eight Lessons, Revised Edition (2014), pages 30, 31, 53, 65, 91, 96, 102, 146, 159, 161, 166, 178, 188, 196, 197, 198, 221, 230, 231
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   completed_passive_voice      kunaxik — grammar: "Completed Passive Voice"
%   derived_transitive_verbsimple_passive_vo kuna — grammar: "Derived Transitive Verb—Simple Passive Voice"
%   subclass_a                   ilik — grammar: "subclass A"
%   subclass_b                   su’ik — grammar: "Subclass B"
%   subclass_b_2                 to’ik — grammar: "subclass B"
%   subclass_a_2                 mesik — grammar: "Subclass A"
%   active_voice                 waaj — grammar: "Active Voice"
%   bee_type                     b’ee
%   biin_type                    b’iin
%   positional_intransitive_verb q'oyi — grammar: "Positional Intransitive Verb"
%   derived_transitive_verb_subclass_a tzukuxik — grammar: "Derived Transitive Verb Subclass A"
%   simple_intransitive_verbs    uxlan — grammar: "Simple Intransitive Verbs"
%   subclass_a_3                 b'an, mes — grammar: "Subclass A"
%   agent_focus_antipassive_voice k'utik — grammar: "Agent-Focus Antipassive Voice"
%   model_c_conjugation_of_derived_transitiv tijo — grammar: "Model C conjugation of Derived Transitive Verbs in Active Voice"
%   positional_intransitive_verb_2 t'uyi — grammar: "Positional Intransitive Verb"
% Irregular (listed in data/verbs.exceptions.tsv): k’oji
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
