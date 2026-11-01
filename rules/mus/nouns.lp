% rules/mus/nouns.lp
% Creek (Muscogee) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388801: Учебник крикского языка (2003), pages 51, 52, 58
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   cahtv_type                   Cahtv
%   ue_aksumkv_type              Ue-ăksumkv
%   cepvne_type                  cēpvnē
%   emosuswv_type                emŏsuswv
%   fuswv_type                   fuswv
%   hoktvlwv_type                hŏktvlwv
%   hokte_type                   hŏktē
%   honvnwv_type                 hŏnvnwv
%   hopuewv_type                 hŏpuewv
%   vcule_type                   vculē
%   wotko_type                   wotkŏ
%   ewvnwv_type                  ēwvnwv
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
