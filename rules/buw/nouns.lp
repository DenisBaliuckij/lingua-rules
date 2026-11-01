% rules/buw/nouns.lp
% Bubi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38081: Introduction to the Fernandian Tongue Part I (1908), pages 22, 23, 31, 43
%   doc 38507: Essai de grammaire Pove: Langue bantoue du groupe B.30 (Volume II) (1994), pages 101, 249
%   doc 38512: Curso de lengua bubi (1991), pages 129, 132, 136, 137
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   biteke_type                  Biteke
%   boba_type                    Boba
%   bobe_type                    Bobe
%   bompo_type                   Bompo
%   boso_type                    Boso
%   boti_type                    Boti
%   buee_type                    Buee
%   bueta_type                   Bueta
%   bwadi_type                   Bwadi
%   bweta_type                   Bweta
%   daatshi_type                 Daatshi
%   dialo_type                   Dialo
%   eaou_type                    Eaou
%   elu_type                     Elu
%   itshi_type                   Itshi
%   looba_type                   Looba
%   moube_type                   Moube
%   mpela_type                   Mpela
%   nkapi_type                   Nkapi
%   nko_type                     Nko
%   nta_type                     Nta
%   ntshobo_type                 Ntshobo
%   obedi_type                   Obedi
%   obitsha_type                 Obitsha
%   obola_type                   Obola
%   oko_type                     Oko
%   omi_type                     Omi
%   opelo_type                   Opelo
%   roto_type                    Roto
%   sinodi_type                  Sinodi
%   twitshi_type                 TwitShi
%   twitshi_type_2               Twitshi
%   botukwe_type                 botukwe
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
