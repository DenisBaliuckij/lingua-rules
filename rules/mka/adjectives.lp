% rules/mka/adjectives.lp
% Pere adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25133: A grammar of Pere (Bere, Mbre) of Côte d’Ivoire (2019), pages 69, 70, 72, 73, 87, 97, 99, 100, 107
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectives_with_plural_b     fə̀rìní — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_2   gbɔ́rɔ́-wɔ́ — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_3   gbə̀rèyé — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_4   kàlé — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_5   kàló — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_6   káàní — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_7   màgàyá — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_8   tɛ̀tɛ̀gɛ̀ — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_9   wòlé — grammar: "Adjectives with plural -bɛ̀"
%   adjectives_with_plural_b_10  ʃòòwú — grammar: "Adjectives with plural -bɛ̀"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
