% rules/pia/nouns.lp
% Pima Bajo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3411: A Grammar of Nevome (1982), pages 37, 73
%   doc 3412: Textos y gramática del pima bajo (1993), pages 48, 63
%   doc 3414: Pima Bajo: A Grammatical Sketch of Pima Bajo (1996), pages 15, 16, 17, 24
%   doc 849464: Textos y gramatica del Pima Bajo (Texts and Grammar of the Lower Pima) (1993), pages 49, 59, 61
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ban_type                     ban
%   gat_type                     gat
%   hadyen_type                  hadyen
%   hadyen_type_2                hadyén
%   hata_type                    hata
%   ki_type                      ki
%   kely_type                    kély
%   maemer_type                  maémer
%   mamer_type                   mámer
%   so_i_type                    só'i
%   teesem_type                  téesem
%   tesem_type                   tésém
%   wayk_type                    wayk
%   wonem_type                   wónem
%   ookes_type                   óokes
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
