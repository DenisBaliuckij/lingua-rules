% rules/zen/verbs.lp
% Zenaga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68848: Le Zénaga des tribus sénégalaises : contribution à l'étude de la langue berbère (1877), pages 19, 20
%   doc 854281: Étude sur le dialecte Zenaga (1894), pages 6, 7, 8
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ed_ba_type                   ed'ba
%   lama_type                    lama
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
