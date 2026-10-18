% rules/nho/verbs.lp
% Takuu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289764: Takuu grammar and dictionary: a Polynesian language of the South Pacific (2011), pages 22, 23, 35, 36, 37, 38
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   hati_type                    hati
%   hatu_type                    hatu
%   kata_type                    kata
%   apuru_type                   apuru
%   tari_type                    tari
%   hakamakkii_type              hakamakkii
%   hiti_type                    hiti
%   horo_type                    horo
%   huri_type                    huri
%   iloa_type                    iloa
%   kape_type                    kape
%   karana_type                  karana
%   keri_type                    keri
%   maatau_type                  maatau
%   mania_type                   mania
%   masike_type                  masike
%   mori_type                    mori
%   rave_type                    rave
%   rihu_type                    rihu
%   rilo_type                    rilo
%   rorosi_type                  rorosi
%   sara_type                    sara
%   taki_type                    taki
%   toro_type                    toro
%   tue_type                     tue
%   tuureki_type                 tuureki
%   vasi_type                    vasi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
