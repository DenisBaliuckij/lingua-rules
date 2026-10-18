% rules/hop/nouns.lp
% Hopi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46723: Aspects of Hopi Grammar (1978), pages 24, 30, 73, 80, 81, 87, 88, 94, 108, 109, 110, 168, 169
%   doc 816923: Some Phonological Rules of Hopi (1982), pages 6, 8, 9
%   doc 849725: Hopi Grammar (n.d.), pages 36, 37
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hoonauu_type                 hoonauu
%   maana_type                   maana
%   caqapta_type                 caqapta
%   kwasa_type                   kWasa
%   pohko_type                   pohko
%   class_i                      wa — grammar: "Class I"
%   kinship_terms                ?i-kYa — grammar: "kinship terms"
%   caayo_type                   caayo
%   cacqapta_type                cacqapta
%   como_type                    como
%   kwaksa_type                  kWaksa
%   kawayvatrja_type             kawayvatrja
%   kiyapi_type                  kiyapi
%   koho_type                    koho
%   kwite_type                   kwite
%   laho_type                    laho
%   legi_type                    legi
%   leji_type                    leji
%   lerji_type                   lerji
%   melooni_type                 melooni
%   mirikho_type                 mirikho
%   mocikvi_type                 mocikvi
%   moola_type                   moola
%   mooro_type                   mooro
%   napna_type                   napna
%   naqvi_type                   naqvi
%   panapca_type                 panapca
%   pitanakci_type               pitanakci
%   poko_type                    poko
%   poyo_type                    poyo
%   qotosompi_type               qotosompi
%   saaqa_type                   saaqa
%   sihi_type                    sihi
%   siivi_type                   siivi
%   sooya_type                   sooya
%   taaqa_type                   taaqa
%   tama_type                    tama
%   tami_type                    tami
%   tamo_type                    tamo
%   tisna_type                   tisna
%   tooci_type                   tooci
%   witi_type                    witi
%   yiryapi_type                 yirYapi
% Irregular (listed in data/nouns.exceptions.tsv): koyoijo, koyozo, laqana, qapira, tokoci
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
