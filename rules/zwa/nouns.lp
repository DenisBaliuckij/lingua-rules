% rules/zwa/nouns.lp
% Zay nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70567: Das Zay: Deskriptive Grammatik einer Ostguragesprache (Äthiosemitisch) (1985), pages 81, 86, 148, 155, 163, 164, 178, 190, 231, 232
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   erbe_type                    ?erbe
%   obak_type                    ?obäk
%   da_ime_type                  dä?ime
%   gurage_type                  guräge
%   kumsari_type                 kumsäri
%   ligi_type                    ligi
%   mereli_type                  mereli
%   mesob_type                   mesöb
%   seb_type                     seb
%   set_type                     set
%   tewar_type                   tewar
%   wozene_type                  wozene
%   zaay_type                    zäay
% Irregular (listed in data/nouns.exceptions.tsv): gered
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
