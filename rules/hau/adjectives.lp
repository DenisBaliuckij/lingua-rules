% rules/hau/adjectives.lp
% Hausa adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296296: Hausa Grammatical Sketch (2012), pages 12, 13, 18, 21, 24, 25, 26, 29, 33
%   doc 820278: An Outline of Hausa Grammar (1947), pages 26, 47
%   doc 820306: The Hausa Language: A Descriptive Grammar (1982), pages 50, 62
%   doc 855841: Hausa Grammar (n.d.), pages 30, 31, 32, 36, 46, 51, 52, 78, 79, 80, 81, 90, 91
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   algashi_type                 algashi
%   baki_type                    baki
%   bai_type                     baƙiː
%   bebe_type                    beːbeː
%   bao_type                     bàːƙoː
%   chikakke_type                chikakke, dafaffe, konanne, wankakke
%   danye_type                   danye
%   dogo_type                    dogo
%   dogo_type_2                  doːgoː
%   fari_type                    fari
%   fari_type_2                  fariː
%   fai_type                     faɽiː
%   gajere_type                  gajere
%   gurgu_type                   gurgu
%   gajere_type_2                gàjeːreː
%   huntu_type                   huntuː
%   ja_type                      jaː
%   kankane_type                 kankane
%   kore_type                    kore
%   kore_type_2                  koːrèː
%   kurma_type                   kurmaː
%   kumama_type                  kùmaːmaː
%   makaho_type                  màkaːhòː
%   rawaya_type                  rawaya
%   rawaja_type                  ràːwajàː
%   shudi_type                   shudi
%   tafasashshe_type             tafasashshe
%   tsofo_type                   tsofo
%   tuyayye_type                 tuyayye
%   ulumi_type                   ƙuːlumiː
%   anane_type                   ƙànƙanèː
%   azami_type                   ƙàzaːmiː
%   arawo_type                   ɓàraːwòː
%   babba_type                   babba
%   babba_type_2                 bàbba
%   ja_type_2                    ja
%   jaro_type                    jaːròː
%   kadan_type                   kadan
%   kakkabra_type                kakkabra
%   karami_type                  karami
%   mugu_type                    mugu
%   mugu_type_2                  muːgùː
%   sabo_type                    sabo
%   sabo_type_2                  saːboː
%   shui_type                    shuːɗìː
%   tsoho_type                   tsoːhoː
%   ato_type                     ƙaːtòː
%   arami_type                   ƙàramiː
%   anje_type                    ɗanjeː
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
