% rules/mbc/verbs.lp
% Macuxi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388849: Phonology and Morphosyntax of Macuxi (Carib) (1982), pages 74, 106, 160, 162
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   continuative_aspect          wai — grammar: "Continuative Aspect"
%   directional_verbs            iipi — grammar: "directional verbs"
%   directional_verbs_2          wuti — grammar: "directional verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
