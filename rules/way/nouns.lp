% rules/way/nouns.lp
% Wayana nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 106223: A Wayana Grammar (1978), pages 9, 10, 17
%   doc 388926: A Grammar of Wayana (2005), pages 139, 140, 213
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   pakolo_type                  pakolo
%   wel_isi_type                 wel'isi
%   wosi_type                    wosi
%   apukuita_type                apukuita
%   etat_type                    etat
%   oka_n_type                   oka-n
%   ipili_n_type                 ipili-n
%   pupu_type                    pupu
%   wolisi_type                  wolisi
%   ipili_tpi_type               ipili-tpi
%   pampila_n_type               pampila-n
%   watkit_type                  watkiT
%   wewe_type                    wewe
% Irregular (listed in data/nouns.exceptions.tsv): inma, kot, ku, oti, ulu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
