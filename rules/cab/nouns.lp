% rules/cab/nouns.lp
% Garifuna nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 901643: A Grammar of Garifuna (2016), pages 48, 78, 304
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   arufudahati_type             arúfudahati
%   aruney_type                  arûney
%   gurigiya_type                gürígiya
%   iduhe_type                   idúhe
%   irahu_type                   iráhü
%   surusiya_type                surúsiya
%   wuguri_type                  wügûri
%   a_buti_type                  á:buti
%   idahati_type                 ídahati
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
