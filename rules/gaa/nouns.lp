% rules/gaa/nouns.lp
% Ga nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73769: A Grammar of Gã (2014), pages 69
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nouns_that_take_plural_suffix_i gbèé — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_ji ninè — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_i_2 nãàb̃ú — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_ji_2 nãǹè — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_i_3 shinã́ — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_ji_3 sãǹè — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_i_4 tsòfã̀ — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_ji_4 tsɛ̀lɛ̀ — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_i_5 tɛ́ — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_ji_5 wòlò — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_ji_6 wɔ̀lɔ̀ — grammar: "Nouns that take plural suffix -ji"
%   nouns_that_take_plural_suffix_i_6 àtàlé — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_i_7 àwàlé — grammar: "Nouns that take plural suffix -i"
%   nouns_that_take_plural_suffix_i_8 ònṹfṹ — grammar: "Nouns that take plural suffix -i"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
