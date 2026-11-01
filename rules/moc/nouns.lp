% rules/moc/nouns.lp
% Mocovi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388386: A Grammar of Mocovi (1998), pages 74, 78, 102, 103, 111, 127
%   doc 839240: A grammar of Mocoví (1998), pages 70, 72, 100
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nouns_that_take_the_collective_suffix_sa Ic — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_2 kotap-ik — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_3 lasote — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_4 ne:tarqc-ik — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_5 peteka-ik — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_6 pinkos-ik — grammar: "Nouns that take the collective suffix -sat"
%   nouns_that_take_the_collective_suffix_sa_7 ravami — grammar: "Nouns that take the collective suffix -sat"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
