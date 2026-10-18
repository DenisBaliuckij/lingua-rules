% rules/plg/nouns.lp
% Pilagá nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 26817: Enseñanza de la lengua pilagá: Gramática pedagógica (Libro 1) (2013), pages 42, 43, 50, 51, 52, 62
%   doc 388757: PILAGA GRAMMAR (GUAYKURUAN FAMILY, ARGENTINA) (2001), pages 128, 131
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   adina_type                   adina
%   adose_type                   adose
%   alewa_type                   alewa
%   epaqe_type                   epaqe
%   ketaq_type                   ketaq
%   korose_type                  korose
%   laciyi_type                  laciyi
%   lapat_type                   lapat
%   look_type                    loʔok
%   mapike_type                  mapike
%   nalonek_type                 nalonek
%   nanok_type                   nanok
%   napia_type                   napiaʔ
%   naaik_type                   naʔaik
%   necest_type                  necest
%   neketela_type                neketela
%   newake_type                  newake
%   noaete_type                  noaete
%   nodike_type                  nodike
%   noqona_type                  noqona
%   norop_type                   norop
%   norotolek_type               norotolek
%   palteta_type                 palteʔta
%   pegaq_type                   pegaq
%   pela_type                    pelaʔ
%   peta_type                    peta
%   pioq_type                    pioq
%   pogaranara_type              pogaranara
%   qapa_type                    qaʔpa
%   qikienek_type                qikienek
%   qolorololo_type              qolorololo
%   sajaraneq_type               sajaraneq
%   siyaroa_type                 siyaroa
%   som_type                     som
%   takaike_type                 takaike
%   taraqi_type                  taraqi
%   yao_type                     yao
%   yiinek_type                  yiʔinek
%   aete_type                    ʔaete
%   aik_type                     ʔaik
%   ase_type                     ʔase
%   iyaq_type                    ʔiyaq
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
