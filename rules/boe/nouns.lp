% rules/boe/nouns.lp
% Mundabli nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 128: A grammar of Mundabli: A Bantoid (Yemne-Kimbi) language of Cameroon (2017), pages 92, 93, 119, 120, 122, 123, 164, 312
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   gender_3_7a                  fɔ̄ — grammar: "Gender 3/7a"
%   gender_7_8                   gɔ̄ŋláŋ — grammar: "Gender 7/8"
%   gender_3_7a_2                ɲū — grammar: "Gender 3/7a"
%   gender_1_2                   mɔ̀ — grammar: "Gender 1/2"
%   gender_3_7a_3                tʃyē — grammar: "Gender 3/7a"
%   gender_7_8_2                 bwāke᷆ — grammar: "Gender 7/8"
%   gender_7_8_3                 bɔ̀ — grammar: "Gender 7/8"
%   gender_9_10                  bɔ̀m — grammar: "Gender 9/10"
%   gender_9_10_2                dzwàn — grammar: "Gender 9/10"
%   gender_7_8_4                 dìdə̀m — grammar: "Gender 7/8"
%   gender_7_8_5                 də̌ — grammar: "Gender 7/8"
%   gender_1_2_2                 dʒàkâ — grammar: "Gender 1/2"
%   gender_7_8_6                 fo᷇ — grammar: "Gender 7/8"
%   gender_7_8_7                 fúfù — grammar: "Gender 7/8"
%   gender_19_18                 fɛ᷆n — grammar: "Gender 19/18"
%   gender_1_2_3                 gbàn — grammar: "Gender 1/2"
%   gender_7_8_8                 kpűkpó̤ — grammar: "Gender 7/8"
%   gender_3_7a_4                kpɒ́ — grammar: "Gender 3/7a"
%   gender_1_2_4                 kpə̀kə̌ — grammar: "Gender 1/2"
%   gender_1_2_5                 kpə᷆ — grammar: "Gender 1/2"
%   gender_7_8_9                 kàkwə̄l — grammar: "Gender 7/8"
%   gender_7_8_10                kúkú — grammar: "Gender 7/8"
%   gender_7_8_11                kūkwā — grammar: "Gender 7/8"
%   gender_7_8_12                kɔ́m — grammar: "Gender 7/8"
%   gender_7_8_13                kɛ̋ — grammar: "Gender 7/8"
%   gender_7_8_14                kʊ̄ — grammar: "Gender 7/8"
%   gender_7_8_15                lɔ̋kɔ̄ — grammar: "Gender 7/8"
%   gender_1_2_6                 mbűntsha̋ — grammar: "Gender 1/2"
%   gender_1_2_7                 mbɛ̌ — grammar: "Gender 1/2"
%   gender_1_2_8                 ndzòke᷆ — grammar: "Gender 1/2"
%   gender_7_8_16                ndzǎndzà — grammar: "Gender 7/8"
%   gender_3_10                  ndɔ̀n — grammar: "Gender 3/10"
%   gender_19_18_2               nta̋m — grammar: "Gender 19/18"
%   gender_1_2_9                 ntɛ̌ — grammar: "Gender 1/2"
%   gender_7_8_17                nǎná — grammar: "Gender 7/8"
%   gender_7_8_18                syàŋ — grammar: "Gender 7/8"
%   gender_9_10_3                sām — grammar: "Gender 9/10"
%   gender_9_10_4                sɔ̌ŋ — grammar: "Gender 9/10"
%   gender_9_10_5                tsō — grammar: "Gender 9/10"
%   gender_9_10_6                tsə̌ — grammar: "Gender 9/10"
%   gender_7_8_19                tákpàm — grammar: "Gender 7/8"
%   gender_1_2_10                tɔ̄tɔ̀ — grammar: "Gender 1/2"
%   gender_7_8_20                tɔ̋ŋ — grammar: "Gender 7/8"
%   gender_7_8_21                tɔ᷆ — grammar: "Gender 7/8"
%   gender_1_2_11                tʃìtʃɛ́ — grammar: "Gender 1/2"
%   gender_3_7a_5                tʃə̋m — grammar: "Gender 3/7a"
%   gender_1_2_12                wān — grammar: "Gender 1/2"
%   gender_3_7a_6                wʊ̋ŋ — grammar: "Gender 3/7a"
%   gender_19_18_3               ŋkǎn — grammar: "Gender 19/18"
%   gender_19_18_4               ŋmgbə̀ — grammar: "Gender 19/18"
%   gender_19_18_5               ɲǎŋ — grammar: "Gender 19/18"
%   gender_19_18_6               ɲʃʊ́ŋ — grammar: "Gender 19/18"
% Irregular (listed in data/nouns.exceptions.tsv): bye᷆, da̋n, dzæ̋, fu᷆, mfǔŋ, swōm, tsǎn, tʃʊ̋ŋ, wɔ᷆ŋ, ɲwa᷆n, ɲű
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
