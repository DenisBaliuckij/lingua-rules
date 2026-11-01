% rules/tsb/nouns.lp
% Tsamakko nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25224: A Grammar of Ts'amakko (2014), pages 84, 85, 86, 87, 90, 93, 148, 170, 189, 192, 195
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ethnic_group_terms           aar-e — grammar: "ethnic group terms"
%   age_grade_terms              baasar-k, bilbil-k, gurmal-k, loobar-k ... — grammar: "age grade terms"
%   attributive_nouns_with_ko_te_agreement baxxar, kamur — grammar: "attributive nouns with -ko/-te agreement"
%   alliance_terms               binnas-k — grammar: "alliance terms"
%   bisko_type                   biško
%   ethnic_group_terms_2         gitam-a — grammar: "ethnic group terms"
%   ethnic_group_terms_3         murris — grammar: "ethnic group terms"
%   attributive_nouns_with_plurative_ae warkat-a — grammar: "attributive nouns with Plurative -ae"
%   attributive_nouns_with_plurative_ae_2 zarg-e — grammar: "attributive nouns with Plurative -ae"
%   sabura_type                  šabura
%   attributive_nouns_with_plurative_ae_3 šilšilk — grammar: "attributive nouns with Plurative -ae"
%   ethnic_group_terms_4         aal-e — grammar: "ethnic group terms"
%   baakko_type                  baakko
%   ethnic_group_terms_5         biral-e — grammar: "ethnic group terms"
%   busuk_ko_type                busuk-ko
%   eesko_type                   eesko
%   gaal_e_type                  gaal-e
%   clan_names                   izm-akk — grammar: "clan names"
%   mazo_type                    mažo
%   meken_te_type                meken-te
%   clan_names_2                 ozb-ikk — grammar: "clan names"
%   qomatte_type                 q’omatte
%   clan_names_3                 reeg-akk — grammar: "clan names"
%   sile_type                    sile
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
