% rules/bfu/verbs.lp
% Bunan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14244: A Descriptive Grammar of Bunan (2014), pages 190, 193, 194, 292, 467, 499, 500
%   doc 14245: A Grammar of Bunan (2017), pages 272, 273, 276, 277, 425
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   intransitive_conjugation     el — grammar: "intransitive conjugation"
%   transitive_conjugation       lik — grammar: "transitive conjugation"
%   transitive_conjugation_2     jok — grammar: "transitive conjugation"
%   middle_conjugation           lok — grammar: "middle conjugation"
%   intransitive_conjugation_2   tʰok — grammar: "intransitive conjugation"
%   v4                           bup — grammar: "V4"
%   v4_2                         dat — grammar: "V4"
%   v4_3                         kʰap — grammar: "V4"
%   v4_4                         tat — grammar: "V4"
%   v4_5                         ɕit — grammar: "V4"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
