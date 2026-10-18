% rules/tku/verbs.lp
% Upper Necaxa Totonac verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 42455: A grammatical sketch of Upper Necaxa Totonac (n.d.), pages 12, 34, 36, 37, 39, 40, 42, 43, 44, 47
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_1                      taßtú — grammar: "Class 1"
%   class_3                      laÓ÷tsín — grammar: "Class 3"
%   class_2a                     paß — grammar: "Class 2a"
%   class_2a_2                   tuks — grammar: "Class 2a"
%   class_2b                     tßaÓn — grammar: "Class 2b"
%   class_3_perfective_transitive_forms √laÓ÷tsín — grammar: "Class 3 perfective transitive forms"
%   stative_posture_verbs        wakáÓ¬ — grammar: "stative posture verbs"
% Irregular (listed in data/verbs.exceptions.tsv): aÓn, min
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
