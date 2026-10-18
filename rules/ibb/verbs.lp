% rules/ibb/verbs.lp
% Ibibio verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72154: Old Calabar and Notes on the Ibibio Language (1935), pages 75, 80
%   doc 476806: Studies in Ibibio Grammar (2014), pages 90, 108, 251, 447, 455, 456, 474, 475, 499, 658
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   adaka_type                   adaka
%   akpa_type                    akpa
%   asak_type                    asak
%   ata_type                     ata
%   do_type                      do
%   eben_type                    eben
%   edep_type                    edep
%   efege_type                   efege
%   ekwere_type                  ekwere
%   enyie_type                   enyie
%   ono_type                     ono
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
