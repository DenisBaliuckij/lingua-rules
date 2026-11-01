% rules/kfz/nouns.lp
% Koromfe nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296276: Koromfe (1992), pages 250, 251, 255, 256, 258, 307, 478, 479
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   bml_type                     !bml
%   bun_type                     !bun!
%   hon_type                     !hon!
%   huloml_type                  !huloml
%   isemi_type                   ISEmI
%   iduml_type                   Iduml
%   ikunl_type                   Ikunl
%   sekre_type                   SEkrE
%   class_ga_m_sub_type_singular_lja SElJa — grammar: "Class ga/m, sub-type singular [lJa]"
%   de_a_class_with_singular_de  SEndE — grammar: "de/a class with singular [de]"
%   de_a_class_with_singular_individual_fre W:JfrE — grammar: "dE/a class with singular (individual) [frE]"
%   class_ga_m_sub_type_singular_lja_2 WEnnglJa — grammar: "Class ga/m, sub-type singular [lJa]"
%   de_a_class_with_singular_de_2 ZEIJdE — grammar: "de/a class with singular [de]"
%   de_a_class_with_singular_de_3 ZOIJdE — grammar: "de/a class with singular [de]"
%   de_a_class_with_singular_ie  bEllE — grammar: "dE/a class with singular [IE]"
%   de_a_class_with_singular_individual_fre_2 bandakofrE — grammar: "dE/a class with singular (individual) [frE]"
%   class_ga_m_sub_type_singular_lja_3 bikelJA — grammar: "Class ga/m, sub-type singular [lJa]"
%   bollre_type                  bollre
%   de_a_class_with_singular_ie_2 bulle — grammar: "dE/a class with singular [IE]"
%   d_j_jre_type                 d:J:JrE
%   dabeere_type                 dabEErE
%   dems_lre_type                dems::lre
%   diijgre_type                 diIJgre
%   dnnbere_type                 dnnbErE
%   de_a_class_with_singular_ie_3 dollE — grammar: "dE/a class with singular [IE]"
%   class_ga_m_sub_type_singular_gal dombgm — grammar: "Class ga/m, sub-type singular [gal"
%   class_ga_m_sub_type_singular_lja_4 g:JmglJa — grammar: "Class ga/m, sub-type singular [lJa]"
%   gigaare_type                 gIgaarE
%   gams_type                    gams
%   gmdre_type                   gmdrE
%   h_mdre_type                  h:mdrE
%   de_a_class_with_singular_de_4 honde — grammar: "de/a class with singular [de]"
%   hubtre_type                  hubtre
%   hullre_type                  hullre
%   jilntre_type                 jilntrE
%   de_a_class_with_singular_de_5 jlindE — grammar: "de/a class with singular [de]"
%   kandre_type                  kandrE
%   keijgre_type                 keIJgre
%   class_ga_m_sub_type_singular_lja_5 kerelJkAIJA — grammar: "Class ga/m, sub-type singular [lJa]"
%   kesre_type                   kesre
%   class_ga_m_sub_type_singular_lja_6 kifelJA — grammar: "Class ga/m, sub-type singular [lJa]"
%   de_a_class_with_singular_individual_fre_3 kofre — grammar: "dE/a class with singular (individual) [frE]"
%   kutre_type                   kutre
%   de_a_class_with_singular_de_6 mEndE — grammar: "de/a class with singular [de]"
%   de_a_class_with_singular_de_7 samde — grammar: "de/a class with singular [de]"
%   sondre_type                  sondre
%   subre_type                   subre
%   tefre_type                   tEfrE
%   de_a_class_with_singular_de_8 tOIJdE — grammar: "de/a class with singular [de]"
%   tagre_type                   tagrE
%   tembre_type                  tembre
%   togre_type                   togre
%   class_ga_m_sub_type_singular_lja_7 vElJa — grammar: "Class ga/m, sub-type singular [lJa]"
%   zoijgre_type                 zOIJgre
%   de_a_class_with_singular_de_9 zende — grammar: "de/a class with singular [de]"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
