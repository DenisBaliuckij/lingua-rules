% rules/inh/nouns.lp
% Ingush nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73567: Ingush Grammar (2011), pages 78, 79, 151, 155, 157, 158, 159, 160, 246, 260, 261, 263, 336, 767, 808, 809, 812, 814, 815, 816
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   leatta_type                  leatta
%   daa_type                     daa
%   ghalghaa_type                ghalghaa
%   jurt_type                    jurt
%   no_change_in_stem_vowel_no_extension kuotam, da'ar — grammar: "No change in stem vowel, no extension"
%   c_aa_type                    c'aa
%   di_type                      di
%   dottagh_type                 dottagh
%   dynie_type                   dynie
%   xa_type                      xa
%   zhwalii_type                 zhwalii
%   personal_names_ending_in_aa  Muusaa — grammar: "Personal names ending in -aa"
%   easietaar_type               Easietaar
%   personal_names_ending_in_consonant Mohwmad — grammar: "Personal names ending in consonant"
%   c_i_type                     c'i
%   dig_type                     dig
%   ghum_type                    ghum
%   hwett_type                   hwett
%   ii_extension                 jisha — grammar: "-ii- extension"
%   kes_type                     kes
%   declension_class_3           kuorta — grammar: "declension class 3"
%   diminutive_singularizing_i_gj kyljg — grammar: "diminutive/singularizing {-(i)gj}"
%   declension_class_9           loalaxuo — grammar: "declension class 9"
%   malagh_type                  malagh
%   no_change_in_stem_vowel_no_extension_2 maza — grammar: "No change in stem vowel, no extension"
%   muhw_type                    muhw, nihw
%   nost_type                    nost
%   nuu_type                     nuu
%   n_extension_and_ablaut       pwa — grammar: "-n- extension and ablaut"
%   pwu_type                     pwu
%   n_extension                  pxo — grammar: "-n- extension"
%   ii_extension_2               qiera, shura — grammar: "-ii- extension"
%   m_extension                  ram — grammar: "-m extension"
%   n_extension_and_ablaut_2     sa — grammar: "-n- extension and ablaut"
%   n_extension_and_ablaut_3     t'ii — grammar: "-n- extension and ablaut"
%   n_extension_2                tq'ouruo — grammar: "-n- extension"
%   no_change_in_stem_vowel_no_extension_3 txa — grammar: "No change in stem vowel, no extension"
%   vosha_type                   vosha
%   nar_extension_and_ablaut     wi — grammar: "-nar- extension and ablaut"
%   declension_class_1           xii — grammar: "declension class 1"
%   nar_extension_and_ablaut_2   zwy — grammar: "-nar- extension and ablaut"
%   shortened_vowel_in_nominative ber — grammar: "Shortened vowel in nominative"
%   shortened_vowel_in_nominative_2 kor — grammar: "Shortened vowel in nominative"
%   bagie_type                   bagie
%   dotuu_type                   dotuu
%   hwu_type                     hwu
%   kou_type                     kou
%   meaxa_type                   meaxa
%   soa_type                     soa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
