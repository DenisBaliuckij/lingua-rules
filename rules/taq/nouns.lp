% rules/taq/nouns.lp
% Tamasheq nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626235: A Grammar of Tamashek (Tuareg of Mali) (2013), pages 219, 225, 231, 232, 255, 338
%   doc 839243: The Tamasheq of North-East Burkina Faso: Notes on Grammar and Syntax including a Key Vocab (2011), pages 116
%   doc 854043: Essai de grammaire de la langue tamachek' (1860), pages 93, 95, 119, 122
%   doc 854045: Essai de grammaire de la langue Tamachek, renfermant les principes du langage parlé par le (1860), pages 93, 95, 99, 119, 122
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   c_final_sg_vowels_short_full_medial_clus a-baelbod — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_full_medial_clus_2 a-baerkot — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_short_masculine a-dardar — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_full_medial_clus_3 a-hakkum — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_full_medial_clus_4 a-hattin — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_short_masculine_2 a-jallad — grammar: "C-final, Sg vowels short-short, masculine"
%   paired_masculine_and_feminine_plurals a-kaebar — grammar: "Paired Masculine and Feminine Plurals"
%   c_final_sg_vowels_short_full_medial_clus_5 a-lakkin — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_full_medial_clus_6 a-lammuz — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_full_medial_clus_7 a-maknud — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_short_masculine_3 a-marras — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_4 a-rallam — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_full_medial_clus_8 a-rassud — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   c_final_sg_vowels_short_short_masculine_5 a-s-adlaj — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_6 a-s-afrad — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_7 a-s-aftav — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_8 a-s-agras — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_9 a-s-akmas — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_10 a-s-alxam — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_short_masculine_11 a-s-arnas — grammar: "C-final, Sg vowels short-short, masculine"
%   c_final_sg_vowels_short_full_medial_clus_9 a-z-almaz — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
%   ae_type                      ae-ζα
%   arabic_plurals               aeddaewlaet — grammar: "Arabic plurals"
%   arabic_plurals_2             alqabll-aet — grammar: "Arabic plurals"
%   e_baekaer_type               e-baekaer
%   e_daem_type                  e-daem
%   e_jaedaer_type               e-jaedaer
%   c_final_sg_vowels_short_short_masculine_12 e-kaeqkaen — grammar: "C-final, Sg vowels short-short, masculine"
%   feminine_counterparts_of_a   t-a-dakkel-t — grammar: "feminine counterparts of (a)"
%   paired_masculine_and_feminine_plurals_2 t-a-duf-t — grammar: "Paired Masculine and Feminine Plurals"
%   feminine_plurals             t-a-faeja — grammar: "Feminine Plurals"
%   feminine_plurals_2           t-a-fakka — grammar: "Feminine Plurals"
%   feminine_counterparts_of_a_2 t-a-fassor-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_3 t-a-gagger-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_4 t-a-hanjam-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_5 t-a-jarjis-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_6 t-a-jayyes-t — grammar: "feminine counterparts of (a)"
%   feminine_plurals_3           t-a-jslla — grammar: "Feminine Plurals"
%   feminine_counterparts_of_a_7 t-a-kaerkas-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_8 t-a-kaerkor-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_9 t-a-kambaw-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_10 t-a-karres-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_11 t-a-laekkot-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_12 t-a-m-akres-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_13 t-a-m-sksoy-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_14 t-a-magket-t — grammar: "feminine counterparts of (a)"
%   feminine_plurals_4           t-a-mara — grammar: "Feminine Plurals"
%   feminine_counterparts_of_a_15 t-a-maskoy-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_16 t-a-naffel-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_17 t-a-nakkef-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_18 t-a-rabber-t — grammar: "feminine counterparts of (a)"
%   feminine_plurals_5           t-a-rasja — grammar: "Feminine Plurals"
%   feminine_plurals_6           t-a-rassa — grammar: "Feminine Plurals"
%   c_final_sg_vowels_short_full_no_clusters t-a-s-ahrar-t — grammar: "C-final, Sg vowels short-full,no clusters, feminine"
%   feminine_counterparts_of_a_19 t-a-s-askar-t — grammar: "feminine counterparts of (a)"
%   feminine_plurals_7           t-a-sakke — grammar: "Feminine Plurals"
%   feminine_counterparts_of_a_20 t-a-sakkot-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_21 t-a-sambot-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_22 t-a-sarret-t — grammar: "feminine counterparts of (a)"
%   t_a_sori_type                t-a-sori
%   feminine_counterparts_of_a_23 t-a-zayder-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_24 t-ae-lasyyeq-q — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_25 t-ae-rakken-t — grammar: "feminine counterparts of (a)"
%   t_akarya_type                t-akarya
%   t_as_zoli_type               t-as-zoli
%   t_e_daemi_t_t_type           t-e-däemi-t-t
%   feminine_plurals_8           t-e-jaese — grammar: "Feminine Plurals"
%   feminine_counterparts_of_a_26 t-e-laeftes-t — grammar: "feminine counterparts of (a)"
%   feminine_counterparts_of_a_27 t-se-rammeq-q — grammar: "feminine counterparts of (a)"
%   t_se_sa_type                 t-se-sa
%   paired_masculine_and_feminine_plurals_3 ά-duf — grammar: "Paired Masculine and Feminine Plurals"
%   c_final_sg_vowels_short_full_initial_and α-gdalset — grammar: "C-final, Sg vowels short-full, initial and medial clusters, masculine"
%   c_final_sg_vowels_short_full_medial_clus_10 α-zaemboy — grammar: "C-final, Sg vowels short-full, medial cluster, masculine"
% Irregular (listed in data/nouns.exceptions.tsv): edi, esu, lyor, t-a-raerasba, t-a-zulek-k
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
