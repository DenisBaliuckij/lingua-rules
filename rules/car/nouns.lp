% rules/car/nouns.lp
% Carib nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388337: A Carib grammar and dictionary (2008), pages 64, 65, 70, 73, 83, 138
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   amyija_type                  amyija
%   anari_type                   anari
%   apipin_type                  apipin
%   asery_type                   asery
%   auto_type                    auto
%   ijawan_type                  ijàwan
%   je_type                      je
%   mosin_type                   mosin
%   mynoto_type                  mynoto
%   penato_type                  penato
%   adjectival_noun              poto — grammar: "adjectival noun"
%   pun_type                     pun
%   pyito_type                   pyito
%   pynsere_type                 pynsere
%   sanim_type                   sanim
%   sekuri_type                  sekuri
%   serere_type                  serere
%   sikyi_type                   sikỳi
%   sirapi_type                  sirapi
%   turu_type                    turu
%   tururu_type                  tururu
%   upu_type                     upu
%   woryi_type                   woryi
% Irregular (listed in data/nouns.exceptions.tsv): pi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
