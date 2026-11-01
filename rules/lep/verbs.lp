% rules/lep/verbs.lp
% Lepcha verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41956: Non-pronominalised Himalayan Languages: Lepcha-Tamang-Gurung-Newari-Mangar-Sunwar (Lepcha  (2001), pages 96, 103
%   doc 108684: Grammar of the Rong (Lepcha) Language, as it exists in the Dorjeling and Sikkim Hills (1870), pages 58, 59, 60, 61, 63, 64, 72, 79, 80, 81, 82, 84
%   doc 289632: A grammar of the Rg (Lepcha) language : as it exists in the Dorjeling und Sikim hills (n.d.), pages 61, 66, 72, 88, 89
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ryu_type                     ryu
%   lik_type                     lik
%   ni_type                      ni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
