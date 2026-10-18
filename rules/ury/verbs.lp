% rules/ury/verbs.lp
% Orya verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9508: A Summary of Orya Grammar (n.d.), pages 22, 31, 33, 35
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   syal_type                    syal
% Irregular (listed in data/verbs.exceptions.tsv): gu, gwë, hakal, hata, hërhe, ihe, lwaha, mae, nikin, otde, zan, ës
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
