% rules/ibb/nouns.lp
% Ibibio nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72154: Old Calabar and Notes on the Ibibio Language (1935), pages 75, 80
%   doc 476806: Studies in Ibibio Grammar (2014), pages 90, 108, 251, 447, 455, 456, 474, 475, 499, 658
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   abia_type                    Abia
%   ayara_type                   Ayara
%   eren_type                    Eren
%   esen_type                    Esen
%   ibet_type                    Ibet
%   nte_type                     Nte
%   ofn_type                     Ofn
%   ubak_type                    Ubak
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
