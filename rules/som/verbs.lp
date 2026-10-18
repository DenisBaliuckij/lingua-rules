% rules/som/verbs.lp
% Somali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296377: Somali (1999), pages 45, 46, 63, 74, 75, 76, 77, 95, 96, 101, 102, 104, 105, 106, 108, 113, 114, 116, 128
%   doc 652031: A Grammar of the Somali Language with Examples in Prose and Verse and an Account of the Yi (1875), pages 50, 59, 63, 66, 73, 75, 77, 80, 85, 86
%   doc 793678: Somali Grammar (2021), pages 222, 226, 227, 228, 232, 234, 236, 239, 240, 241, 244, 248, 259, 541, 542, 546, 564, 565, 568, 569, 571, 572, 582
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   yidhi_type                   yidhi
%   yimi_type                    yimi
%   bare_underived_stems         cún — grammar: "bare (underived) stems"
%   suffix_verbs                 sug — grammar: "suffix verbs"
%   sug_type                     súg
%   buubaa_type                  buubaa
%   c3                           joogsan — grammar: "C3"
%   c2                           karin — grammar: "C2"
%   c1                           sugaa — grammar: "C1"
%   yiqiin_type                  yiqiin
%   adkeyn_type                  adkéyn
%   neuter_stems                 beerán — grammar: "Neuter stems"
%   past_progressive             qabaa — grammar: "Past Progressive"
%   qaba_type                    qabá
%   hedna_type                   hedna
%   weina_type                   weina
%   yahay_type                   yahay
%   yiil_type                    yiil
%   conjugation_3a               joogso — grammar: "Conjugation 3A"
%   conjugation_2a               kari — grammar: "Conjugation 2A"
%   conjugation_3b               qaado — grammar: "Conjugation 3B"
%   conjugation_2b               yaree — grammar: "Conjugation 2B"
%   prefixing_verbs              aqoon — grammar: "prefixing verbs"
%   first_conjugation            dulma — grammar: "First Conjugation"
%   first_conjugation_2          hadla — grammar: "First Conjugation"
%   first_conjugation_3          makhla — grammar: "First Conjugation"
%   present_simple_prefixing_verbs_negative aalló, aqaannó — grammar: "Present Simple prefixing verbs - negative"
%   first_conjugation_4          arka — grammar: "First Conjugation"
%   confirmative_past            gursanayaa — grammar: "Confirmative Past"
%   present_simple_prefixing_verbs_negative_2 idhaahdó, imaaddó — grammar: "Present Simple prefixing verbs - negative"
%   prefixing_verbs_2            imaad — grammar: "prefixing verbs"
%   c3_2                         joogsáday — grammar: "C3"
%   c2_2                         kariyey — grammar: "C2"
%   prefixing_verbs_3            odhaah — grammar: "prefixing verbs"
%   prefixing_verbs_4            ool — grammar: "prefixing verbs"
%   confirmative_past_2          sameeyaa — grammar: "Confirmative Past"
%   confirmative_past_3          shegeyaa — grammar: "Confirmative Past"
%   simple_past_prefixing_verbs_negative dhah — grammar: "Simple Past prefixing verbs - negative"
%   simple_past_prefixing_verbs_negative_2 jir — grammar: "Simple Past prefixing verbs - negative"
%   optative                     doorsána — grammar: "Optative"
%   ibso_type                    ibso
%   c3_3                         joogsaa — grammar: "C3"
%   c2_3                         karaa — grammar: "C2"
%   c1st_conjugation             dagal, dil, hel, yel — grammar: "1st Conjugation"
%   c1st_conjugation_2           sheg — grammar: "1st Conjugation"
%   prefixing_verbs_5            aal — grammar: "prefixing verbs"
%   prefixing_verbs_6            dhaah, maad — grammar: "prefixing verbs"
%   prefixing_verbs_7            qaan — grammar: "prefixing verbs"
%   badso_type                   badso
%   bahhso_type                  bahhso
%   bukso_type                   bukso
%   ghaibso_type                 ghaibso
%   future_prefixing_verbs       iman — grammar: "Future prefixing verbs"
%   c1st_conjugation_3           kill — grammar: "1st Conjugation"
%   future_prefixing_verbs_2     odhan — grammar: "Future prefixing verbs"
%   future_prefixing_verbs_3     oolli — grammar: "Future prefixing verbs"
% Irregular (listed in data/verbs.exceptions.tsv): ahaa, ahay, ahaánayaa, ahaánayay, lahaan, lahaánayaa, lahaánayay, léeyahay, oil
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
