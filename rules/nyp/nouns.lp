% rules/nyp/nouns.lp
% Nyang'i nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9416: Grammatical Contraction in Nyang'i: A Descriptive and Comparative Study (2017), pages 57, 86, 87, 88, 89, 103, 104
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   replacive_tone_plural_class  bàsáɲ — grammar: "replacive tone plural class"
%   ot_plurals                   dùrè — grammar: "/-ot/ plurals"
%   it_plurals                   kàcér — grammar: "/-ít/ plurals"
%   marginal_plural_marking_strategies kàràwát — grammar: "Marginal plural marking strategies"
%   petrified_masculine_locative_case_1_gend lòlékék — grammar: "Petrified masculine locative case (1) gender prefixes"
%   petrified_at_singulative     mùsát — grammar: "Petrified /-at/ singulative"
%   petrified_feminine_locative_case_1_gende nàsép — grammar: "Petrified feminine locative case (1) gender prefixes"
%   petrified_at_singulative_2   rògát — grammar: "Petrified /-at/ singulative"
%   at_plurals                   sùm — grammar: "/-at/ plurals"
%   replacive_tone_plural_class_2 tíŋòl — grammar: "replacive tone plural class"
%   at_plurals_2                 tùkùɲáŋ — grammar: "/-at/ plurals"
%   ot_plurals_2                 ŋátùrù — grammar: "/-ot/ plurals"
%   replacive_tone_plural_class_3 ŋòròs — grammar: "replacive tone plural class"
%   at_plurals_3                 ɲàráp — grammar: "/-at/ plurals"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
