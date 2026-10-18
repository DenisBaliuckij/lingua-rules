% rules/roh/adjectives.lp
% Romansh (Sursilvan/Sutsilvan/Sutselvan/Vallader/Puter) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388753: Grammatica d’instrucziun dal rumantsch grischun (2006), pages 47, 51, 52, 53, 54, 55, 59, 60, 61, 67, 72, 77, 80, 81, 91, 92, 93
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   brin_type                    brin, curt
%   allegher_type                allegher
%   bel_type                     bel
%   flaivel_type                 flaivel
%   giuven_type                  giuven
%   grop_type                    grop
%   luc_type                     luc
%   meglier_type                 meglier
%   mellen_type                  mellen
%   mender_type                  mender
%   pitschen_type                pitschen
%   plat_type                    plat
%   sez_type                     sez
%   solen_type                   solen
%   stanchel_type                stanchel
%   svizzer_type                 svizzer
%   tschuf_type                  tschuf
%   ventiraivel_type             ventiraivel
%   viscal_type                  viscal
% Irregular (listed in data/adjectives.exceptions.tsv): agen, lartg, mez
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
