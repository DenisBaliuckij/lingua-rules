% rules/dar/nouns.lp
% Mehweb nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16842: The Mehweb language: Essays on phonology, morphology and syntax (2019), pages 68, 69, 75, 96, 108, 115, 117, 141, 276
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   abakar_type                  Abakar
%   abaj_type                    abaj
%   adaj_type                    adaj
%   ance_type                    anč’e
%   baba_type                    baba
%   canzi_type                   canzi
%   cula_type                    cula
%   curku_type                   curku
%   cerc_type                    c’erc
%   daga_type                    daga
%   derqw_type                   derqʷ
%   iri_type                     irʔi
%   kwahni_type                  kʷahni
%   kwet_type                    k’ʷet
%   lazi_type                    laˤži
%   liga_type                    liga
%   ned_type                     ned
%   ner_type                     nerʁ
%   ner_type_2                   nerχ
%   qac_a_type                   qaˤč'a
%   qu_type                      qu
%   sinka_type                   sinka
%   tara_type                    t’arħa
%   teni_type                    t’eni
%   tor_type                     t’oˤrʜ
%   tuti_type                    t’ut’i
%   unza_type                    unza
%   wank_a_type                  wank'a
%   cana_type                    čana
%   ara_type                     ħarħa
%   sersi_type                   šerši
%   sinq_a_type                  šinq'a
%   sina_type                    šinʔa
%   ara_type_2                   ʁarʁa
% Irregular (listed in data/nouns.exceptions.tsv): xunul, χʷe
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
