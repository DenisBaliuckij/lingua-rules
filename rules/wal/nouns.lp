% rules/wal/nouns.lp
% Wolaytta nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7985: A Descriptive Study of the Modern Wolaytta Language (2008), pages 152, 161, 265, 684, 1115
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   genuine_feminine_common_noun micc-íyo — grammar: "Genuine Feminine Common Noun"
%   masculine_class_e            har — grammar: "Masculine Class E"
%   masculine_class_a            kan — grammar: "Masculine Class A"
%   masculine_class_a_2          kan-á — grammar: "Masculine Class A"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
