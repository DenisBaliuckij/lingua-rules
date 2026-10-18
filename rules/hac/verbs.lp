% rules/hac/verbs.lp
% Gawraǰūyī verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388270: The Gorani language of Gawraǰū, a village of West Iran: Texts, grammar, and lexicon (2011), pages 23, 28, 29, 30, 33, 35, 39, 40, 41, 44
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kar_type                     kar
%   wit_type                     wit
%   bi_type                      bī
%   he_type                      hē
%   wat_type                     wāt
%   xans_type                    xans
%   raw_type                     řaw
%   ti_type                      tī
%   zanist_type                  zānist
% Irregular (listed in data/verbs.exceptions.tsv): nā, wā, š
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
