% rules/ayl/verbs.lp
% Libyan Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93305: A Descriptive Grammar of Libyan Arabic (1976), pages 64
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   strong_verbs_measure_i       yusrub — grammar: "Strong verbs: Measure I"
%   defective_verbs_measure_i    yarmi — grammar: "Defective verbs: Measure I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
