% rules/akk/adjectives.lp
% Akkadian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93127: A Grammar of Akkadian (2011), pages 95, 196, 224, 247, 293, 295, 364, 398, 399, 400, 401, 416, 430, 431, 432, 450, 463, 476, 490, 500, 658, 659, 660, 690
%   doc 818163: The Akkadian Verb and Its Semitic Background (2010), pages 156, 201, 203, 205, 325, 332, 336, 379, 440, 512, 565
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   free_attributive_forms       damiq — grammar: "Free Attributive Forms"
%   free_attributive_forms_2     dann — grammar: "Free Attributive Forms"
%   free_attributive_forms_3     ell — grammar: "Free Attributive Forms"
%   free_attributive_forms_4     rabi — grammar: "Free Attributive Forms"
%   free_attributive_forms_5     †åb — grammar: "Free Attributive Forms"
%   salmu_type                   šalmu
%   independent_possessive_adjectives yûm — grammar: "Independent Possessive Adjectives"
%   masc_pl_adj_s                damqËtum — grammar: "Masc. Pl. Adj.s"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
