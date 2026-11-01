% rules/lij/adjectives.lp
% Tabarchino (Ligurian) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388932: Grammatica del tabarchino (2005), pages 72, 73, 74, 75, 112, 114, 117, 122, 126, 170, 172, 175, 176, 178, 180, 183, 185, 189, 193, 195, 196, 197, 198, 199
%   doc 816516: Grammaire Monégasque (1909), pages 22, 33, 34, 35, 38, 42, 46, 55, 57, 58, 59, 64, 65, 66, 67, 68, 71, 75, 76, 81, 82, 84
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ancien_type                  ançièn
%   premiere_classe_masculin_en_u_feminin_en belu, tantu, tróppu, ôtretantu — grammar: "première classe (masculin en u, féminin en o)"
%   bon_type                     bon
%   capun_type                   capun
%   deuxieme_forme               chëlu — grammar: "deuxième forme"
%   malin_type                   malin
%   mandian_type                 mandiân
%   pelandnm_type                pelandnm
%   pocu_type                    pócu
%   quante_type                  quante
%   seren_type                   seren
%   premiere_forme               chistu — grammar: "première forme"
%   cuchin_type                  cuchin
%   troisieme_classe_singulier_en_l esemplafl — grammar: "troisième classe (singulier en l)"
%   premiere_classe_masculin_en_u_feminin_en_2 nlgru — grammar: "première classe (masculin en u, féminin en o)"
%   deuxieme_classe_singulier_en_e priiaente — grammar: "deuxième classe (singulier en e)"
%   aggettivi_in_au              abaciucàu — grammar: "aggettivi in -àu"
%   aggettivi_in_au_2            anesciàu — grammar: "aggettivi in -àu"
%   nomi_e_aggettivi_maschili_in_un brün — grammar: "nomi e aggettivi maschili in -ün"
%   deuxieme_classe_singulier_en_e_2 fedele — grammar: "deuxième classe (singulier en e)"
%   nomi_e_aggettivi_maschili_in_un_2 impurtün — grammar: "nomi e aggettivi maschili in -ün"
%   san_type                     san
%   sen_type                     sen
%   aggettivi_in_au_3            sàu — grammar: "aggettivi in -àu"
%   tin_type                     tin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
