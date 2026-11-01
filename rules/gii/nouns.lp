% rules/gii/nouns.lp
% Girirra nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 10016: The Grammar of Girirra (A Lowland East Cushitic Language of Ethiopia) (2015), pages 82, 83, 136, 145, 146, 151, 155, 158, 160, 169, 170, 205, 221, 222, 224
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   liquid_final_nouns           awuur — grammar: "liquid final nouns"
%   anan_type                    anan, dameer, eej
%   liquid_final_nouns_2         bil — grammar: "liquid final nouns"
%   biriis_type                  biriis
%   liquid_final_nouns_3         buur — grammar: "liquid final nouns"
%   liquid_final_nouns_4         digaaga — grammar: "liquid final nouns"
%   geed_type                    geed
%   haan_type                    haan
%   habar_type                   habar
%   liquid_final_nouns_5         hugoogil — grammar: "liquid final nouns"
%   ijjaal_type                  ijjaal
%   miis_type                    miis
%   min_type                     min
%   ukkun_type                   ukkun
%   wan_type                     wan
%   liquid_final_nouns_6         ɗeel — grammar: "liquid final nouns"
% Irregular (listed in data/nouns.exceptions.tsv): dib, ʃaar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
