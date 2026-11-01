% rules/ncr/nouns.lp
% Nchane nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 204: A grammar of Nchane: A Bantoid (Beboid) language of Cameroon (2020), pages 107, 108, 111, 112, 115, 116, 145, 179, 224, 228
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   classes_9_and_10             bvu᷄ — grammar: "Classes 9 and 10"
%   class_1_and_class_2          bvúlè — grammar: "class 1 and class 2"
%   gender_14_6a                 bvū-bīŋɛ̄ — grammar: "Gender 14/6a"
%   gender_14_6a_2               bvū-dyɛ᷆ — grammar: "Gender 14/6a"
%   gender_14_6a_3               bvū-kū — grammar: "Gender 14/6a"
%   gender_14_6a_4               bvū-kɔ́ — grammar: "Gender 14/6a"
%   gender_14_6a_5               bvū-lɛ᷆ — grammar: "Gender 14/6a"
%   gender_14_6a_6               bvū-shí — grammar: "Gender 14/6a"
%   gender_14_6a_7               bvū-shɛ̄ — grammar: "Gender 14/6a"
%   gender_14_6a_8               bvū-ta᷆ — grammar: "Gender 14/6a"
%   class_3_and_class_4          bwɛ̰́̄ — grammar: "class 3 and class 4"
%   gender_3_13                  bīné — grammar: "Gender 3/13"
%   class_1_and_class_2_vestigial_labial_gli chwɛ᷄ — grammar: "class 1 and class 2 (vestigial labial glide)"
%   classes_9_and_10_2           chá̰̄ — grammar: "Classes 9 and 10"
%   classes_9_and_10_3           chējē — grammar: "Classes 9 and 10"
%   class_1_and_class_2_2        chɔ́ŋ — grammar: "class 1 and class 2"
%   gender_5_6                   chɛ́mɛ́ — grammar: "Gender 5/6"
%   gender_5_6_stem_length_alternation gvu᷆nɛ̀ — grammar: "Gender 5/6 (stem length alternation)"
%   gender_5_6_2                 gvúnē — grammar: "Gender 5/6"
%   classes_9_and_10_4           gwe᷆ — grammar: "Classes 9 and 10"
%   class_3_and_class_4_2        gwí — grammar: "class 3 and class 4"
%   class_3_and_class_4_3        gwɔ᷇ŋ — grammar: "class 3 and class 4"
%   gender_5_6_stem_length_alternation_2 jīsɛ́ — grammar: "Gender 5/6 (stem length alternation)"
%   classes_9_and_10_5           jɔ́ŋ — grammar: "Classes 9 and 10"
%   class_1_and_class_2_3        kfu᷆ — grammar: "class 1 and class 2"
%   class_1_and_class_2_4        kfúlá — grammar: "class 1 and class 2"
%   classes_9_and_10_6           kwē — grammar: "Classes 9 and 10"
%   class_1_and_class_2_5        kùŋ — grammar: "class 1 and class 2"
%   gender_5_6_3                 lá — grammar: "Gender 5/6"
%   gender_5_6_4                 lábɛ̀ — grammar: "Gender 5/6"
%   class_1_and_class_2_6        m̀bēgɛ̄ — grammar: "class 1 and class 2"
%   class_1_and_class_2_7        m̄būshá — grammar: "class 1 and class 2"
%   classes_9_and_10_7           n̄sàŋ — grammar: "Classes 9 and 10"
%   class_1_and_class_2_8        n̄sū — grammar: "class 1 and class 2"
%   classes_9_and_10_8           shî — grammar: "Classes 9 and 10"
%   gender_5_6_5                 ti᷇ — grammar: "Gender 5/6"
%   gender_3_13_2                wá̰᷇ — grammar: "Gender 3/13"
%   gender_3_13_3                ŋ̄gvu᷇lɛ́ — grammar: "Gender 3/13"
%   gender_3_13_4                ŋ̄gvu᷇ŋ — grammar: "Gender 3/13"
%   gender_3_13_5                ŋ̄gú — grammar: "Gender 3/13"
%   class_1_and_class_2_vestigial_labial_gli_2 ŋ̄gɔ̄nɛ́ — grammar: "class 1 and class 2 (vestigial labial glide)"
%   class_1_and_class_2_9        ŋ̄ku᷇ — grammar: "class 1 and class 2"
%   class_1_and_class_2_10       ǹsàlà — grammar: "class 1 and class 2"
%   gender_3_13_6                ɱ̄fû — grammar: "Gender 3/13"
% Irregular (listed in data/nouns.exceptions.tsv): bwe᷆, chi᷇, jwɛ̄ŋsɛ́, kwɛsé, mu᷆, mwa᷆
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
