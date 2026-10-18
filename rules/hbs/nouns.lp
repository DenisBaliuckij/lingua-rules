% rules/hbs/nouns.lp
% Serbo-Croatian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23142: Ilirska slovnica (1854), pages 209
%   doc 105570: Grammatica della lingua serbo-croata (illirica) (1867), pages 40, 50, 72, 74, 75, 82, 88, 96, 97, 98, 99, 100, 101, 102, 103, 135
%   doc 389103: Bosnian, Croatian, Serbian, a Grammar: With Sociolinguistic Commentary (2010), pages 111, 132, 154, 156, 157, 160, 163, 168, 310, 317, 318, 319, 320, 321, 322, 323, 324, 325
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dan_type                     dan
%   declinazione_dura            jelen — grammar: "declinazione dura"
%   declinazione_molle           mač — grammar: "declinazione molle"
%   masculine_animate_nouns      Srbin — grammar: "MASCULINE animate nouns"
%   masculine_animate_nouns_2    Turčin — grammar: "MASCULINE animate nouns"
%   masculine_inanimate_nouns    grad — grammar: "MASCULINE inanimate nouns"
%   masculine_animate_nouns_3    junak — grammar: "MASCULINE animate nouns"
%   masculine_animate_nouns_4    konj — grammar: "MASCULINE animate nouns"
%   masculine_animate_nouns_5    muž — grammar: "MASCULINE animate nouns"
%   masculine_inanimate_nouns_2  put — grammar: "MASCULINE inanimate nouns"
%   masculine_inanimate_nouns_3  zadatak — grammar: "MASCULINE inanimate nouns"
%   feminine_nouns_in_a          borba — grammar: "FEMININE nouns in -a"
%   feminine_nouns_in_a_2        djevojka — grammar: "FEMININE nouns in -a"
%   feminine_nouns_in_a_3        knjiga — grammar: "FEMININE nouns in -a"
%   feminine_nouns_in_a_consonant ljubav — grammar: "FEMININE nouns in a consonant"
%   feminine_nouns_in_a_consonant_2 noć — grammar: "FEMININE nouns in a consonant"
%   feminine_nouns_in_a_consonant_3 radost — grammar: "FEMININE nouns in a consonant"
%   feminine_nouns_in_a_consonant_4 stvar — grammar: "FEMININE nouns in a consonant"
%   feminine_nouns_in_a_4        tetka — grammar: "FEMININE nouns in -a"
%   feminine_nouns_in_a_5        učiteljica — grammar: "FEMININE nouns in -a"
%   feminine_nouns_in_a_consonant_5 misao — grammar: "FEMININE nouns in a consonant"
%   seconda_declinazione         žena — grammar: "Seconda Declinazione"
%   male_names                   Brane — grammar: "MALE names"
%   female_names                 Dragica — grammar: "FEMALE names"
%   male_names_2                 Hrvoje — grammar: "MALE names"
%   female_names_2               Ines — grammar: "FEMALE names"
%   male_names_3                 Ivo — grammar: "MALE names"
%   male_names_4                 Nikola — grammar: "MALE names"
%   male_names_5                 Ranko, Đorđe — grammar: "MALE names"
%   female_names_3               Vesna — grammar: "FEMALE names"
%   feminine_nouns_in_a_6        ruka — grammar: "FEMININE nouns in -a"
% Irregular (listed in data/nouns.exceptions.tsv): kći
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
