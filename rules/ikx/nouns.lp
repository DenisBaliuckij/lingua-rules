% rules/ikx/nouns.lp
% Ik nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 138: The Ik language: Dictionary and grammar sketch (2017), pages 496, 499, 500, 501, 519, 520, 523, 533, 539, 542, 552, 553, 555, 556, 557, 569, 570, 571
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   feti_type                    fetí
%   ice_type                     Icé, wicé
%   eakwananesi_type             eakwánánèsì
%   kuasi_type                   kuɗásí
%   wetama_type                  wetamá
%   oki_type                     ŋókí
%   ra_type                      ŋʉrá
%   aka_type                     aká
%   arira_type                   arírá
%   awa_type                     awá
%   baratso_type                 baratsó
%   babaa_type                   bàbàà
%   curuku_type                  cúrúkù
%   eku_type                     ekú
%   gwasa_type                   gwasá
%   hoo_type                     hòò
%   kwta_type                    kwɛtá
%   kia_type                     kíʝá
%   kutuu_type                   kútúŋù
%   krb_type                     kɔrɔ́bɛ̀
%   ria_type                     ríʝá
%   seda_type                    sédà
%   taa_type                     taɓá
%   tsba_type                    tsʼʉ́bà
%   ido_type                     ídò
%   fr_type                      ɔfɔrɔƙɔ́
%   a_type                       ɔ́ʝá
%   ann_type                     ɲánɨnɔ́ɔ̀
%   eurumoti_type                ɲéƙúrumotí
% Irregular (listed in data/nouns.exceptions.tsv): cekí, dakú, eakwá, imá, kɔ́rɔ́ɓádì, ámá, ɗɨ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
