% rules/cup/nouns.lp
% Cupeño nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 51181: A Grammar of Cupeño (1998), pages 199, 225, 236, 237
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   aanyu_type                   aanyu
%   asisma_type                  asisma
%   awisma_type                  awisma
%   canaati_type                 canaati
%   chalaka_type                 chalaka
%   daraangxa_type               daraangxa
%   gaatu_type                   gaatu
%   kanyima_type                 kanyima
%   ki_sh_type                   ki-sh
%   mexachaa_type                mexacha’a
%   paxaa_type                   paxa’a
%   petaama_type                 peta’ama
%   qeqene_type                  qeqene
%   sekwikwina_type              sekwikwina
%   siyewe_type                  siyewe
%   sui_sh_type                  su’i-sh
%   tooru_type                   tooru
%   tnedoor_type                 tænedoor
%   yalaavi_type                 yalaavi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
