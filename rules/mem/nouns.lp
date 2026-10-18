% rules/mem/nouns.lp
% Jiwarli nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19520: A Reference Grammar of the Mantharta Languages, Western Australia (2015), pages 63, 64, 67, 68, 69, 72, 73, 76
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   barb_type                    barb
%   boy_type                     boy
%   chin_type                    chin
%   dog_type                     dog
%   girl_type                    girl
%   one_type                     one
%   what_type                    what
%   kantharri_type               kantharri
%   kunyjan_type                 kunyjan
%   kurta_type                   kurta
%   mimi_type                    mimi
%   ngajala_type                 ngajala
%   ngathal_type                 ngathal
%   papu_type                    papu
%   pipi_type                    pipi
%   thami_type                   thami
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
