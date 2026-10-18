% rules/gmh/verbs.lp
% Middle High German verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 942390: Introduction to Middle High German: a reader and grammar (1900), pages 51, 53, 54, 55, 64
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   gan_type                     gan
%   weak_verbs                   loben — grammar: "weak verbs"
%   strong_verbs                 miden — grammar: "strong verbs"
%   strong_verbs_2               nemen — grammar: "strong verbs"
%   neman_type                   neman
%   stan_type                    stan
% Irregular (listed in data/verbs.exceptions.tsv): kumen
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
