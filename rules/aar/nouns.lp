% rules/aar/nouns.lp
% Afar nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289396: L’afar : description grammaticale d’une langue couchitique (Djibouti, Erythrée et Ethiopie (2015), pages 179, 181, 185, 186, 189, 191, 232, 300, 301, 302, 303, 304, 305, 306, 308, 309, 310, 316, 318, 319, 321, 322, 323
%   doc 296344: A Generative Grammar Study of Afar (1977), pages 204, 212, 324, 325, 337
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nom_dunite_male              ebertó — grammar: "Nom d’unité mâle"
%   nom_dunite_male_2            ʕablé — grammar: "Nom d’unité mâle"
%   damaae_type                  damaaʕé
%   derived_gender_animate_nouns katay'sa — grammar: "derived gender animate nouns"
%   lagaade_type                 lagaadé
%   nariige_type                 nariigé
%   rugaagi_type                 rugaagí
%   feminine_disyllabic_nouns_type_v1co amó — grammar: "feminine disyllabic nouns type v1Có"
%   singulatif                   amħár — grammar: "Singulatif"
%   derived_gender_animate_nouns_2 bada — grammar: "derived gender animate nouns"
%   badiila_type                 badiilá
%   baskil_type                  baskíl
%   bustaan_type                 bustaan
%   c1v1c2c2v2_c1v1v1c2c2a       bállu — grammar: "C1V1C2C2V2 > C1V1V1C2C2á"
%   c1v1c2c2v2_c1v1v1c2c2a_2     búyyi — grammar: "C1V1C2C2V2 > C1V1V1C2C2á"
%   derived_gender_animate_nouns_3 dum'mu — grammar: "derived gender animate nouns"
%   cv1cv1ca_cv1cv1c             fiddimá — grammar: "CV1CV1Cá > CV1CV1C"
%   feminine_disyllabic_nouns_type_c1v1c2e_o gasó — grammar: "feminine disyllabic nouns type C1V1C2é/ó"
%   cv1cv1ca_cv1cv1c_2           gubuná — grammar: "CV1CV1Cá > CV1CV1C"
%   feminine_disyllabic_nouns_type_vc1a iná — grammar: "feminine disyllabic nouns type VC1á"
%   feminine_disyllabic_nouns_type_v1co_2 iró — grammar: "feminine disyllabic nouns type v1Có"
%   karamella_type               karamellá
%   kayniie_type                 kayniiʕé
%   derived_gender_animate_nouns_4 kuta — grammar: "derived gender animate nouns"
%   kondom_type                  kóndom
%   makiina_type                 makiiná
%   muallim_type                 muʕállim
%   muaahara_type                mu∫aahará
%   singulatif_2                 oroomó — grammar: "Singulatif"
%   singulatif_3                 soomaalí — grammar: "Singulatif"
%   tayyaara_type                tayyaará
%   singulatif_4                 tigré — grammar: "Singulatif"
%   ado_takami_type              ħado-takamí
%   adaala_type                  ʕadáala
%   feminine_disyllabic_nouns_type_c1v1c2e_o_2 ʕalé — grammar: "feminine disyllabic nouns type C1V1C2é/ó"
%   singulatif_5                 ʕaráb — grammar: "Singulatif"
%   ayso_yakami_type             ʕayso-yakámi
%   cv1cv1ca_cv1cv1c_3           ʕibiná — grammar: "CV1CV1Cá > CV1CV1C"
%   oobaari_type                 ʕoobaarí
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
