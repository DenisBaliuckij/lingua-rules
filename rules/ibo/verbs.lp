% rules/ibo/verbs.lp
% Igbo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48523: Igbo Grammar: Grammatical Rules In Igbo Language (n.d.), pages 49
%   doc 48527: Comprehensive Igbo Language: A Contemporary Guide for Beginners and Intermediate Learners (2020), pages 27, 42, 58
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   mee_type                     mee
%   were_type                    were
%   chi_type                     chi
%   kpo_type                     kpo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
