% rules/sux/verbs.lp
% Sumerian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7938: Semitic Languages: Outline of a Comparative Grammar (1997), pages 381, 382, 412
%   doc 47915: Nueva gramática de Sumerio (2018), pages 54
%   doc 388772: A Descriptive Grammar of Sumerian (2010), pages 234, 698, 704
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   prefix_conjugation_iprus_type nagara — grammar: "Prefix-Conjugation: iprus-Type"
%   prefix_conjugation_iparras_type ilammad — grammar: "Prefix-Conjugation: iparras-Type"
%   prefix_conjugation_iparras_type_2 lākkdm — grammar: "Prefix-Conjugation: iparras-Type"
%   zi_g_type                    zi.g
%   prefix_conjugation_iparras_type_3 danbīl — grammar: "Prefix-Conjugation: iparras-Type"
%   stem_iv_1_a_st               parās'u — grammar: "Stem IV. 1/A (Št)"
% Irregular (listed in data/verbs.exceptions.tsv): copula, qtl má f ' l
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
