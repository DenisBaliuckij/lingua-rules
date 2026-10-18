% rules/pl/nouns.lp
% Polish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22986: Polish: An Essential Grammar (2014), pages 53, 71, 76, 79, 81, 87, 106, 146, 157, 158, 246, 248, 396, 397, 398, 399, 400, 401, 402, 403, 404, 408, 414, 417, 419, 423, 425
%   doc 388455: A Grammar of Contemporary Polish (2002), pages 58, 61, 88, 98, 102, 103, 104, 118, 120, 121, 123, 231, 232, 241, 242, 243, 252, 253, 254, 256, 325, 326, 327
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dabrowska_type               Dàbrowska, Jarocka
%   surnames_masculine_ski       Krupski — grammar: "Surnames: masculine -ski"
%   surnames_masculine_cki       Malicki — grammar: "Surnames: masculine -cki"
%   pekao_type                   Pekao, hobby
%   polak_type                   Polak
%   rosjanin_type                Rosjanin
%   surnames_masculine_dzki      Zawadzki — grammar: "Surnames: masculine -dzki"
%   regular_nouns                aleja — grammar: "Regular nouns"
%   regular_nouns_2              armia, lekcja — grammar: "Regular nouns"
%   masculine_gender_noun_declension artysta — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   k_stem_mob_vow               biurko — grammar: "k-stem, mob. vow."
%   regular_nouns_3              biuro, lato — grammar: "Regular nouns"
%   adjectival                   bliźni — grammar: "ADJECTIVAL"
%   brzeg_type                   brzeg
%   um_type                      centrum — grammar: "-um-type"
%   adjectival_2                 chorąży — grammar: "ADJECTIVAL"
%   hard_stems_p_stem_pers       chłop — grammar: "Hard Stems (p-stem, pers.)"
%   nouns_with_emotive_coloration chłopak — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   masculine_gender_noun_declension_2 cieśla — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   regular_nouns_4              ciocia — grammar: "Regular nouns"
%   regular_nouns_5              droga — grammar: "Regular nouns"
%   neuter                       drzewo, państwo, miasto — grammar: "Neuter"
%   nouns_with_emotive_coloration_2 dzieciak — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   dziecko_type                 dziecko
%   ch_stem                      echo — grammar: "ch-stem"
%   masculine_gender_noun_declension_3 gazda — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   typical_noun_declension      gałąź — grammar: "Typical noun declension"
%   neuter_2                     gniazdo — grammar: "Neuter"
%   gospodyni_type               gospodyni
%   sz_stem_gsg_a                grosz — grammar: "sz-stem, Gsg. -a"
%   nouns_with_emotive_coloration_3 idiota — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   regular_nouns_6              imię — grammar: "Regular nouns"
%   neuter_3                     jabłko — grammar: "Neuter"
%   r_stem                       jezioro — grammar: "r-stem"
%   masculine_nouns_mixed_declension kaleka — grammar: "Masculine nouns – mixed declension"
%   masculine_nouns_mixed_declension_2 kierowca — grammar: "Masculine nouns – mixed declension"
%   masculine_nouns_mixed_declension_3 kolega — grammar: "Masculine nouns – mixed declension"
%   kon_type                     koń
%   kraj_type                    kraj, dom
%   krawiec_type                 krawiec
%   stem_mob_vow                 krzesło — grammar: "ł-stem, mob. vow."
%   krolewna_type                królewna
%   krolowa_type                 królowa
%   ksiaze_type                  książę
%   adjectival_3                 księgowy, woźny — grammar: "ADJECTIVAL"
%   ksiezna_type                 księżna
%   sz_stem_pers                 lekarz, listonosz — grammar: "sz-stem, pers."
%   k_stem                       lotnisko — grammar: "k-stem"
%   regular_nouns_7              matka, córka — grammar: "Regular nouns"
%   masculine_gender_noun_declension_4 małkut — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   regular_nouns_8              mieszkanie, pole — grammar: "Regular nouns"
%   masculine_gender_noun_declension_5 monarcha — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   regular_nouns_9              muzeum — grammar: "Regular nouns"
%   masculine_nouns_mixed_declension_4 mężczyzna — grammar: "Masculine nouns – mixed declension"
%   nauczyciel_type              nauczyciel
%   regular_nouns_10             niedziela — grammar: "Regular nouns"
%   typical_noun_declension_2    noc — grammar: "Typical noun declension"
%   z_stem_gsg_a                 nóż — grammar: "ż-stem, Gsg. -a"
%   irregular_nouns_a_masculine  ojciec — grammar: "Irregular nouns (a) Masculine"
%   regular_nouns_11             okno — grammar: "Regular nouns"
%   oko_type                     oko
%   pan_type                     pan
%   pani_type                    pani
%   typical_noun_declension_3    pieśń — grammar: "Typical noun declension"
%   profesor_type                profesor
%   ptak_type                    ptak
%   adjectival_4                 rabbi — grammar: "ADJECTIVAL"
%   rzecz_type                   rzecz
%   rzad_type                    rząd
%   sieczna_type                 sieczna, znajoma
%   nouns_with_emotive_coloration_4 sierota — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   hard_stems_p_stem            sklep — grammar: "Hard Stems (p-stem)"
%   studio_type                  studio
%   sto_type                     stół
%   syn_type                     syn
%   regular_nouns_12             szkoła — grammar: "Regular nouns"
%   regular_nouns_13             szyja — grammar: "Regular nouns"
%   sasiad_type                  sąsiad
%   masculine_gender_noun_declension_6 sędzia — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   nouns_with_emotive_coloration_5 sługa — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   rz_stem_gsg_a                talerz — grammar: "rz-stem, Gsg. -a"
%   g_stem                       tango — grammar: "g-stem"
%   ucho_type                    ucho
%   adjectival_5                 uczony — grammar: "ADJECTIVAL"
%   regular_nouns_14             ulica — grammar: "Regular nouns"
%   neuter_4                     wiadro — grammar: "Neuter"
%   regular_nouns_15             wiara — grammar: "Regular nouns"
%   n_stem                       wino — grammar: "n-stem"
%   wujek_type                   wujek
%   z_stem_anim_z_z              wąż — grammar: "ż-stem, anim., ż: ż"
%   regular_nouns_16             zdjęcie — grammar: "Regular nouns"
%   regular_nouns_17             ziemia — grammar: "Regular nouns"
%   nouns_with_emotive_coloration_6 znajda — grammar: "NOUNS WITH EMOTIVE COLORATION"
%   masculine_gender_noun_declension_7 znawca — grammar: "MASCULINE -GENDER NOUN DECLENSION"
%   regular_nouns_18             zwierzę — grammar: "Regular nouns"
%   zab_type                     ząb
%   swiat_type                   świat
%   regular_nouns_19             święto — grammar: "Regular nouns"
%   neuter_5                     koło — grammar: "Neuter"
%   reka_type                    ręka
%   kolej_type                   kolej
%   nic_type                     nić
%   radio_type                   radio
%   kwiecien_type                kwiecień
%   krakowskie_type              Krakowskie, Zakopane
%   surnames_feminine_ska        Krupska — grammar: "Surnames: feminine -ska"
%   surnames_feminine_plural_skie Krupskie — grammar: "Surnames: feminine plural -skie"
%   surnames_feminine_cka        Malicka — grammar: "Surnames: feminine -cka"
%   surnames_feminine_plural_ckie Malickie — grammar: "Surnames: feminine plural -ckie"
%   masculine_nouns_mixed_declension_5 Matejko — grammar: "Masculine nouns – mixed declension"
%   masculine_nouns_mixed_declension_6 Zaręba — grammar: "Masculine nouns – mixed declension"
%   surnames_feminine_dzka       Zawadzka — grammar: "Surnames: feminine -dzka"
%   surnames_feminine_plural_dzkie Zawadzkie — grammar: "Surnames: feminine plural -dzkie"
% Irregular (listed in data/nouns.exceptions.tsv): brat, człowiek, dzień, ksiądz, nasienie, orzeł, pieniądz, przyjaciel, rok, tydzień, ziele
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
