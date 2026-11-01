% rules/squ/verbs.lp
% Squamish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44788: The Squamish Language: Grammar, Texts, Dictionary (1967), pages 89, 91, 92, 138
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   transitive_verb_paradigm_finite s'a'u-at — grammar: "transitive verb paradigm (finite)"
%   transitive_verb_nominal_paradigm_subject na^C'a'u-at — grammar: "transitive verb nominal paradigm (subject-centered)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
