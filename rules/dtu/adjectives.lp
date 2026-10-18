% rules/dtu/adjectives.lp
% Tebul Ure (Dogon) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289390: A Grammar of Tebul Ure (Dogon, Mali) (2015), pages 49, 69, 99, 175, 177, 178, 195, 201, 202
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   d_g_type                     dɛ́-ŋgɛ̀, sɛ́-ŋgɛ̀
%   kanda_type                   kàndá, nà:rⁿá
%   sg_type                      sɛ̀gɛ́
%   ba_type                      bá
%   bodoro_type                  bòdòró
%   gy_g_type                    gɔ̌y-gɔ̀
%   kombo_type                   kómbò
%   ko_type                      kǒ
%   mayn_g_type                  màyⁿ-gɔ́
%   na_nay_type                  ná-này
%   pa_g_type                    pá:-ŋgɔ̀
%   py_g_type                    pɛ̀y-gɔ́
%   il_type                      ìlɛ́
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
