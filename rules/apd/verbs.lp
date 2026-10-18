% rules/apd/verbs.lp
% Darfur Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 627861: A grammar of Darfur Arabic (2018), pages 73, 120, 198, 199, 210, 212, 224, 226, 227, 229, 230, 235, 240, 242, 243, 247, 251, 253, 255, 256, 257, 258, 260, 261, 263
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   basic_regular_verb           koːrak, masak — grammar: "basic regular verb"
%   four_consonant_roots         ɟankab — grammar: "four consonant roots"
%   badi_type                    badːi, biwarːi
%   ga_ad_type                   ga.ad
%   tertia_infirmae_verbs        nisi — grammar: "tertia infirmae verbs"
%   wara_type                    warːa
%   bisaji_type                  bisajːi
%   basic_regular_verb_2         ba-msik — grammar: "basic regular verb"
% Irregular (listed in data/verbs.exceptions.tsv): adːa ʔdj, akal ʔkl, anta ʕᵵj, ba-kuːs kws, ba-ɟi, ba-ɟiːb ʤjb, banti ʕᵵj, daba ðbħ, laːga lqj, rasːal rsl, sadː sdd, sawːa swj ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
