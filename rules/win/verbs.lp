% rules/win/verbs.lp
% Winnebago verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388951: Winnebago Grammar (1945), pages 28, 29, 32, 33
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   neutral_stem                 a'ak — grammar: "Neutral stem"
%   first_class                  he — grammar: "First Class"
%   second_class                 te — grammar: "Second Class"
%   verbs_with_the_prefix_gi_contract haihu — grammar: "Verbs with the prefix gi contract"
%   second_class_2               p'ap — grammar: "Second Class"
%   second_class_3               tac'ka — grammar: "Second Class"
%   second_class_4               tuSca — grammar: "Second Class"
%   verbs_with_the_prefix_hi_contract hip'g'rgs — grammar: "Verbs with the prefix hi contract"
%   verbs_with_the_prefix_ma_contract ma'rjgas — grammar: "Verbs with the prefix ma contract"
%   verbs_with_the_prefix_ix_contract wa'nac — grammar: "Verbs with the prefix ix^ contract"
%   verbs_with_the_prefix_ix_contract_2 wanl — grammar: "Verbs with the prefix ix^ contract"
%   second_class_5               p'a^i — grammar: "Second Class"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
