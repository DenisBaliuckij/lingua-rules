% rules/mij/nouns.lp
% Mungbam nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296439: Mungbam Grammar (2013), pages 163, 164
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_19_18a                 Cı̄-NkjāN — grammar: "class 19/18a"
%   class_19_18a_2               Cı̄-kwan — grammar: "class 19/18a"
%   class_19_18a_3               Cı̄-ntēn — grammar: "class 19/18a"
%   class_19_18a_4               fì-nŹEN — grammar: "class 19/18a"
%   class_19_18a_5               fı̄-mbjôŹ — grammar: "class 19/18a"
%   class_12_8                   k¯@-tCú — grammar: "class 12/8"
%   class_12_8_2                 k´@-bˆ@n — grammar: "class 12/8"
%   class_7_8                    kì-mfı̄ — grammar: "class 7/8"
%   class_7_8_2                  kì-nzù — grammar: "class 7/8"
%   class_7_8_3                  kì-ÃùN — grammar: "class 7/8"
%   class_7_8_4                  kí-da̋N — grammar: "class 7/8"
%   class_7_8_5                  kí-nı̂m — grammar: "class 7/8"
%   class_7_8_6                  kí-wűm — grammar: "class 7/8"
%   class_7_8_7                  kı̄-fí — grammar: "class 7/8"
%   class_7_8_8                  kı̄-kam — grammar: "class 7/8"
%   class_7_8_9                  kı̄-kpEŹ — grammar: "class 7/8"
%   class_7_8_10                 kı̄-nÃím — grammar: "class 7/8"
%   class_12_8_3                 á-Ng˝@m@ — grammar: "class 12/8"
%   class_12_8_4                 á-lóho — grammar: "class 12/8"
%   class_9_10                   ì-CĒ — grammar: "class 9/10"
%   class_9_10_2                 ì-Cū — grammar: "class 9/10"
%   class_9_10_3                 ì-bwē — grammar: "class 9/10"
%   class_9_10_4                 ì-bé — grammar: "class 9/10"
%   class_9_10_5                 ì-bí — grammar: "class 9/10"
%   class_9_10_6                 ì-bù — grammar: "class 9/10"
%   class_9_10_7                 ì-wì — grammar: "class 9/10"
%   class_9_10_8                 ì-zé — grammar: "class 9/10"
%   class_12_8_5                 ā-nÃŸam@ — grammar: "class 12/8"
%   class_9_10_9                 ı̄-kÉ — grammar: "class 9/10"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
