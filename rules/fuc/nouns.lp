% rules/fuc/nouns.lp
% Pulaar nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19521: Précis de grammaire et de lexique du peul du Fouta Djallon (2015), pages 77, 83, 84, 91, 92, 102, 103, 123, 124, 173
%   doc 841997: Pulaar Language Manual (1987), pages 7, 8
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   bareeru_type                 bareeru
%   classes_nominales_iii_classes_dont_le_pl cur-ki — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   classes_nominales_iii_classes_dont_le_pl_2 dan-ki — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   diminutif_ngel_kun_koy       dane-wel — grammar: "diminutif (ngel/kun/koy)"
%   fetere_type                  fetere
%   classes_nominales_iii_classes_dont_le_pl_3 fon-ngo — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   ko                           haak — grammar: "(ko)"
%   himpaare_type                himpaare
%   classes_nominales_iii_classes_dont_le_pl_4 hunndu-ko — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   o_o                          kooraa — grammar: "ɗo(o)"
%   classes_nominales_iii_classes_dont_le_pl_5 koy-ngal — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   classe_des_humains           montor — grammar: "classe des humains"
%   classes_nominales_iii_classes_dont_le_pl_6 ndoo-ndi — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   classes_nominales_iii_classes_dont_le_pl_7 ngay-ka — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   mba                          ngeloo-ba — grammar: "mba"
%   ngu                          pucc-u — grammar: "ngu"
%   ndu                          suu-du — grammar: "ndu"
%   diminutif_ngel_kun_koy_2     tuub-el — grammar: "diminutif (ngel/kun/koy)"
%   waadere_type                 waadere
%   diminutif_ngel_kun_koy_3     waalor-gel — grammar: "diminutif (ngel/kun/koy)"
%   weloo_type                   weloo
%   un                           winndir-ɗun — grammar: "ɗun"
%   diminutif_ngel_kun_koy_4     wuppaa-ngel — grammar: "diminutif (ngel/kun/koy)"
%   yiitere_type                 yiitere
%   yontere_type                 yontere
%   classes_nominales_iii_classes_dont_le_pl_8 ɓer-nde — grammar: "classes nominales III : classes dont le pluriel est -ɗe (-e, -je)"
%   ndu_2                        ɲaariiru — grammar: "ndu"
%   kol                          ɲala-hol — grammar: "kol"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
