% rules/fr/verbs.lp
% French verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103859: Grammaire comparée de la langue française (n.d.), pages 261, 263, 264, 273, 276, 279, 282, 285, 286, 288, 292, 297, 301, 303, 304, 305, 306, 307, 308, 309, 310, 311
%   doc 389038: A Reference Grammar of French (2014), pages 428, 739, 740, 741, 742, 743, 744, 745, 748, 749, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 765, 766, 767, 768, 769, 770, 771, 772, 773
%   doc 848736: A theoretical and practical grammar of the French tongue (n.d.), pages 190, 212, 219, 224, 232, 234, 251, 252, 253, 255, 258, 259, 260, 262, 264, 266, 268, 270, 272, 273, 277, 279, 280, 281, 282
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   acquerir_type                acquérir
%   fourth_conjugation_first_branch jeter, etre — grammar: "FOURTH CONJUGATION. FIRST BRANCH."
%   bouillir_type                bouillir, ouir, défaillir
%   croire_type                  croire
%   ouvrir_type                  ouvrir, couvrir
%   tenir_type                   tenir
%   vaincre_type                 vaincre
%   peindre_type                 peindre
%   aimer_type                   aimer, chanter
%   verbs_with_spelling_changes  appeler — grammar: "Verbs with spelling changes"
%   commencer_type               commencer
%   envoyer_type                 envoyer
%   finir_type                   finir
%   verbes_neutres_auxiliaire_etre tomber — grammar: "verbes neutres (auxiliaire ÊTRE)"
%   sentir_type                  sentir
%   verbes_neutres_auxiliaire_etre_2 nuire — grammar: "verbes neutres (auxiliaire ÊTRE)"
%   premiere_classe_des_verbes_irreguliers_d prendre — grammar: "première classe des verbes irréguliers de cette conjugaison"
%   seconde_classe_des_verbes_irreguliers_en connaître, croître — grammar: "seconde classe des verbes irréguliers en re"
%   courir_type                  courir, fondre
%   cueillir_type                cueillir, faillir
%   second_conjugation_first_branch fuir, fleurir — grammar: "SECOND CONJUGATION. FIRST BRANCH."
%   mouvoir_type                 mouvoir
%   manger_type                  manger
%   partir_type                  partir, dormir, servir, sortir
%   rompre_type                  rompre, mordre, perdre
%   suivre_type                  suivre
%   coudre_type                  coudre
%   crainte_type                 crainte
%   fourth_conjugation           paraître — grammar: "fourth conjugation"
%   fourth_conjugation_2         réduire, taire — grammar: "fourth conjugation"
%   traire_type                  traire
%   punir_type                   punir
%   joindre_type                 joindre
%   naitre_type                  naître
%   fourth_conjugation_3         rendre — grammar: "fourth conjugation"
%   fourth_conjugation_4         plaire — grammar: "fourth conjugation"
%   paitre_type                  paître
%   pleuvoir_type                pleuvoir
%   assaillir_type               assaillir
%   vetir_type                   vêtir
%   falloir_type                 falloir
%   advenir_type                 advenir
%   fourth_conjugation_first_branch_2 absoudre, dissoudre — grammar: "FOURTH CONJUGATION. FIRST BRANCH."
%   verbs_ending_in_oir          recevoir — grammar: "verbs ending in –oir"
%   instruire_type               instruire
%   offrir_type                  offrir, souffrir
%   first_conjugation            parier — grammar: "FIRST CONJUGATION"
%   pondre_type                  pondre, tondre, tordre
%   renare_type                  renare
%   repondre_type                répondre
%   second_conjugation_second_branch conquérir — grammar: "SECOND CONJUGATION. SECOND BRANCH."
%   fifth_branch                 craindre — grammar: "FIFTH BRANCH."
%   second_conjugation_first_branch_2 haïr — grammar: "SECOND CONJUGATION. FIRST BRANCH."
%   second_conjugation_second_branch_2 oïr — grammar: "SECOND CONJUGATION. SECOND BRANCH."
%   repaitre_type                repaitre
%   second_conjugation_second_branch_3 revêtir — grammar: "SECOND CONJUGATION. SECOND BRANCH."
%   second_conjugation_third_branch saillir — grammar: "SECOND CONJUGATION. THIRD BRANCH."
%   second_conjugation_third_branch_2 tressaillir — grammar: "SECOND CONJUGATION. THIRD BRANCH."
%   c_est_type                   c'est
%   third_conjugation            déchoir — grammar: "THIRD CONJUGATION"
%   third_conjugation_2          recevotr — grammar: "THIRD CONJUGATION."
%   fourth_conjugation_third_branch renaître — grammar: "FOURTH CONJUGATION. THIRD BRANCH."
%   fourth_conjugation_first_branch_3 s’ensuivre — grammar: "FOURTH CONJUGATION. FIRST BRANCH."
%   fourth_conjugation_second_branch braire — grammar: "FOURTH CONJUGATION. SECOND BRANCH."
%   third_conjugation_3          choïr — grammar: "THIRD CONJUGATION"
%   devoir_type                  devoir
%   second_conjugation_second_branch_4 ebouillir — grammar: "SECOND CONJUGATION. SECOND BRANCH."
%   s_enfuir_type                s'enfuir
%   fourth_conjugation_first_branch_4 sourdre — grammar: "FOURTH CONJUGATION. FIRST BRANCH."
% Irregular (listed in data/verbs.exceptions.tsv): aller, asseoir, avoir, battre, broyer, choir, circoncire, clore, conclure, confire, connaı̂tre, dire ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
