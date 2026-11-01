% rules/pnb/nouns.lp
% Western Panjabi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 905975: Grammar and Dictionary of Western Panjabi as Spoken in the Shahpur District with Proverbs, (1898), pages 16, 17, 21, 22, 24, 28, 29, 54, 58, 59, 60, 61
%   doc 924603: Grammar and Dictionary of Western Panjabi, as spoken in the Shahpur District, with Proverb (1898), pages 22, 23, 25, 54, 59, 60, 61, 62
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   ordinary_masculine_nouns_ending_in_a_con Char — grammar: "Ordinary masculine nouns ending in a consonant"
%   masculine_nouns_in_a         Ghora — grammar: "Masculine nouns in a"
%   feminine_nouns               Ghorl — grammar: "Feminine nouns"
%   masculine_nouns_in_a_2       GhopS — grammar: "Masculine nouns in a"
%   feminines                    akkh — grammar: "Feminines"
%   feminines_2                  bhīṇ — grammar: "Feminines"
%   feminines_3                  billī — grammar: "Feminines"
%   feminines_4                  chhohir — grammar: "Feminines"
%   masculines_ending_in_consonant_preceded chhohur — grammar: "Masculines ending in consonant preceded by u"
%   feminines_5                  chāngī — grammar: "Feminines"
%   feminines_6                  dhlī — grammar: "Feminines"
%   feminines_7                  gall — grammar: "Feminines"
%   masculines_ending_in_a       ghora — grammar: "Masculines ending in -a"
%   feminines_8                  gā — grammar: "Feminines"
%   feminines_9                  hanj — grammar: "Feminines"
%   feminines_10                 hill — grammar: "Feminines"
%   feminines_11                 kakk — grammar: "Feminines"
%   feminines_12                 khumbh — grammar: "Feminines"
%   masculines_ending_in_a_2     kutta — grammar: "Masculines ending in -a"
%   feminines_13                 majjh — grammar: "Feminines"
%   feminines_14                 mā — grammar: "Feminines"
%   feminines_15                 pillh — grammar: "Feminines"
%   feminines_16                 tand — grammar: "Feminines"
%   feminines_17                 ter — grammar: "Feminines"
%   masculines_ending_in_consonant_preceded_2 vohur — grammar: "Masculines ending in consonant preceded by u"
%   feminines_18                 zāṇ — grammar: "Feminines"
% Irregular (listed in data/nouns.exceptions.tsv): S h, bhrā, gaddē
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
