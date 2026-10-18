% rules/sjs/adjectives.lp
% Senhaja Berber adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41194: Senhaja Berber Varieties: Phonology, Morphology, and Morphosyntax (2021), pages 387, 545, 546
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ordinal_numerals_set_1       lluwwel — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_2     lɛašeṛ — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_3     lḫames, ssades — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_4     ssabeɛ, ttaseɛ, ṛṛabeɛ — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_5     ttaleṯ — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_6     ttamen — grammar: "Ordinal numerals set 1"
%   ordinal_numerals_set_1_7     ttani — grammar: "Ordinal numerals set 1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
