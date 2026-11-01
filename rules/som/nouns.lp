% rules/som/nouns.lp
% Somali nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296377: Somali (1999), pages 45, 46, 63, 74, 75, 76, 77, 95, 96, 101, 102, 104, 105, 106, 108, 113, 114, 116, 128
%   doc 652031: A Grammar of the Somali Language with Examples in Prose and Verse and an Account of the Yi (1875), pages 50, 59, 63, 66, 73, 75, 77, 80, 85, 86
%   doc 793678: Somali Grammar (2021), pages 222, 226, 227, 228, 232, 234, 236, 239, 240, 241, 244, 248, 259, 541, 542, 546, 564, 565, 568, 569, 571, 572, 582
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hooyo_type                   hóoyo
%   declension_5_nouns           Soomáali — grammar: "Declension 5 nouns"
%   declension_7_nouns           aabbé — grammar: "Declension 7 nouns"
%   d4                           aas — grammar: "D4"
%   declension_1_nouns           aayad — grammar: "Declension 1 nouns"
%   declension_2a_nouns          abwaan — grammar: "Declension 2A nouns"
%   declension_7_nouns_2         agaasimé — grammar: "Declension 7 nouns"
%   declension_6_nouns           ayecyó — grammar: "Declension 6 nouns"
%   declension_2a_nouns_2        babbis — grammar: "Declension 2A nouns"
%   declension_7                 bakáyle — grammar: "declension 7"
%   d4_2                         beer — grammar: "D4"
%   declension_3_nouns           bén — grammar: "Declension 3 nouns"
%   d4_3                         bóg — grammar: "D4"
%   declension_1_nouns_2         cabsi — grammar: "Declension 1 nouns"
%   d4_4                         càysh — grammar: "D4"
%   declension_7_nouns_3         danjiré — grammar: "Declension 7 nouns"
%   declension_6_nouns_2         dawó — grammar: "Declension 6 nouns"
%   declension_5_nouns_2         dibi — grammar: "Declension 5 nouns"
%   declension_2b_nouns          durbåan — grammar: "Declension 2B nouns"
%   d4_5                         dàwr — grammar: "D4"
%   declension_4_nouns           dåb — grammar: "Declension 4 nouns"
%   d4_6                         dèyr — grammar: "D4"
%   declension_2b_nouns_2        gorgor — grammar: "Declension 2B nouns"
%   declension_6_nouns_3         hooyó — grammar: "Declension 6 nouns"
%   d4_7                         jíd — grammar: "D4"
%   d4_8                         jíir — grammar: "D4"
%   declension_2a_nouns_3        kúray — grammar: "Declension 2A nouns"
%   declension_6_nouns_4         magaaló — grammar: "Declension 6 nouns"
%   declension_4_nouns_2         nin — grammar: "Declension 4 nouns"
%   declension_3_nouns_2         nàas — grammar: "Declension 3 nouns"
%   declension_2a_nouns_4        oloi — grammar: "Declension 2A nouns"
%   d4_9                         qál — grammar: "D4"
%   d4_10                        ròob — grammar: "D4"
%   declension_2a_nouns_5        salìib — grammar: "Declension 2A nouns"
%   declension_2b_nouns_3        samhåb — grammar: "Declension 2B nouns"
%   declension_2b_nouns_4        suldáan — grammar: "Declension 2B nouns"
%   d4_11                        suun — grammar: "D4"
%   declension_4_nouns_3         sån — grammar: "Declension 4 nouns"
%   declension_7_2               talíye — grammar: "declension 7"
%   declension_7_nouns_4         tuké — grammar: "Declension 7 nouns"
%   d4_12                        tús — grammar: "D4"
%   d4_13                        wéd — grammar: "D4"
%   declension_7_nouns_5         xakamé — grammar: "Declension 7 nouns"
%   declension_1_nouns_3         xudúiid — grammar: "Declension 1 nouns"
%   declension_5_nouns_3         yèy — grammar: "Declension 5 nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
