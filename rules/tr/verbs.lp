% rules/tr/verbs.lp
% Turkish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2596: Практическая грамматика турецкого языка (2007), pages 133, 137, 200, 202, 214, 225
%   doc 103700: Principj della gramatica Turca ad uso dei missionari apostolici de Constantinopoli (1800), pages 289
%   doc 388290: Turkish (1997), pages 171, 278, 313, 328, 334, 337, 339, 343, 344, 348, 404
%   doc 388291: A Grammar of Turkish (2007), pages 29
%   doc 388295: A Student Grammar of Turkish (n.d.), pages 39, 53, 87, 89, 101, 104, 109, 110, 112, 116, 121, 127, 128, 129, 133, 138, 141, 214, 298, 299
%   doc 833701: Turkish Basic Course, Units 1-30 (1966), pages 97, 128, 162, 169, 175, 200, 283, 331, 374
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   istemek_type                 istemek
%   git_type                     git
%   gitmek_type                  gitmek
%   ara_type                     ara
%   al_type                      al
%   almak_type                   almak, birakmak
%   gelmek_type                  gelmek, soylemek
%   okumak_type                  okumak
%   vermek_type                  vermek
%   acmak_type                   acmak, kesmek
%   bilmek_type                  bilmek
%   icmek_type                   içmek
%   konusmak_type                konuşmak
%   kosmak_type                  koşmak
%   oku_type                     oku
%   opmek_type                   opmek, tutmak
%   secmek_type                  seçmek
%   uyumak_type                  uyumak, yuzmek
%   yazmak_type                  yazmak
%   yurumek_type                 yürümek
%   jaralamak_type               jaralamak
%   yapmak_type                  yapmak
%   bulmak_type                  bulmak
%   konuqmak_type                konuqmak
%   tekrarlamak_type             tekrarlamak
%   kapamak_type                 kapamak
%   olmak_type                   olmak
% Irregular (listed in data/verbs.exceptions.tsv): dema, etma, orada olmak, yok olmak
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
