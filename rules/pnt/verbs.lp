% rules/pnt/verbs.lp
% Romeyka verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 100575: A (Contact-)Grammar of Romeyka (2024), pages 110, 117, 124, 129, 195, 209, 210, 211, 212, 214, 215, 217, 225
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kahume_type                  kahume
%   troo_type                    troo
%   eab_o_type                   eɣab-ó
%   verbs_in_o                   faɣo — grammar: "Verbs in -o"
%   verbs_in_o_2                 piko — grammar: "Verbs in -o"
%   verbs_in_o_3                 tró — grammar: "Verbs in -o"
%   verbs_in_me                  tšim-úme — grammar: "Verbs in -me"
%   verbs_in_me_2                tšiméme — grammar: "Verbs in -me"
%   verbs_in_me_3                erxume — grammar: "Verbs in -me"
%   verbs_in_me_4                tšimume — grammar: "Verbs in -me"
% Irregular (listed in data/verbs.exceptions.tsv): diɣo, elebo, epero, exo, ftá, ime, inume, pao, tero, troɣo, érx-ume
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
