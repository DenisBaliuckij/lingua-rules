% rules/kdj/verbs.lp
% Karamojong verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296351: Parlons karimojong: Une langue de l'Afrique orientale (2008), pages 52, 53, 54, 55, 57, 58, 86, 87, 88, 89, 90, 91, 94, 110
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   classe_2_verbes_en_ki        tèm — grammar: "classe 2 (verbes en ki-)"
%   a_raakau_type                a-raakau
%   a_yakau_type                 a-yakau
%   classe_1_verbe_en_to         duk — grammar: "classe 1 (verbe en to-)"
%   classe_1_verbes_en_to        lèm — grammar: "Classe 1 (verbes en to-)"
%   classe_1_to                  màt — grammar: "Classe 1 (to-)"
%   classe_2_ki                  mùj — grammar: "Classe 2 (ki-)"
%   classe_1_verbes_en_to_2      nyam — grammar: "classe 1 (verbes en to-)"
%   classe_2_verbes_en_ki_2      pim — grammar: "classe 2 (verbes en ki-)"
%   bap_type                     bàp
%   iep_type                     iep
%   ker_type                     kèr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
