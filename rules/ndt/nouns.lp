% rules/ndt/nouns.lp
% Mondunga nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3160: Grammaire du Mondunga (Lisala, Congo Belge) (1952), pages 18, 35, 36, 37, 38
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   bula_type                    bulâ
%   dzomboge_type                dzomboge
%   ebd_type                     ebd
%   koba_type                    koba
%   ma_type                      ma
%   mbahe_type                   mbahe
%   ngdtse_type                  ngdtsé
%   ngonge_type                  ngonge
%   ngomboge_type                ngómbóge
%   suumaahe_type                suumaahe
%   tata_type                    tâta
%   tumu_type                    tümû
%   vale_type                    vale
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
