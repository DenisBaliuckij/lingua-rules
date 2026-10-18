% rules/mgr/verbs.lp
% Mambwe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70164: Towards writing a comprehensive grammar of the Mambwe language (2019), pages 96, 99, 100, 101
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ukucina_type                 ukucina, ukulya
%   ukuvwanga_type               ukuvwanga
%   vwanga_type                  vwanga
%   lya_type                     lya
%   tukana_type                  tukana
%   ukufunya_type                ukufunya, ukufwa, ukupyela
%   ukuvwa_type                  ukuvwa
%   ukwiiya_type                 ukwiiya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
