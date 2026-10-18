% rules/mhr/nouns.lp
% Mari (Cheremis) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389078: A Comprehensive Introduction to the Mari Language (2010), pages 44, 48, 57, 59, 61, 71, 72, 78, 79, 100, 130, 131, 132, 137, 149, 160, 172, 180, 181, 191, 214, 231, 237
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   пӧрт
%   class_type_2                 книга-м
%   animate_nouns                йоча — grammar: "Animate nouns"
%   vocative_in                  ава — grammar: "Vocative in -й"
%   vocative_with_possessive_suffix_first_pe марий — grammar: "Vocative with possessive suffix (first person singular)"
%   class_type_3                 тумо
%   vocative_in_2                ака — grammar: "Vocative in -й"
%   vocative_in_3                ача — grammar: "Vocative in -й"
%   vocative_with_possessive_suffix_first_pe_2 вате — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_3 веҥе — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_in_4                еҥга — grammar: "Vocative in -й"
%   vocative_in_5                иза — grammar: "Vocative in -й"
%   vocative_in_6                кова — grammar: "Vocative in -й"
%   vocative_in_7                кока — grammar: "Vocative in -й"
%   vocative_in_8                коча — grammar: "Vocative in -й"
%   vocative_in_9                кугыза — grammar: "Vocative in -й"
%   vocative_in_10               курска — grammar: "Vocative in -й"
%   vocative_with_possessive_suffix_first_pe_4 уныка — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_in_11               чӱчӱ — grammar: "Vocative in -й"
%   vocative_with_possessive_suffix_first_pe_5 чӱчӱньӧ — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_6 шешке — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_7 шольо — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_8 шӱжар — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_9 эрге — grammar: "Vocative with possessive suffix (first person singular)"
%   vocative_with_possessive_suffix_first_pe_10 ӱдыр — grammar: "Vocative with possessive suffix (first person singular)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
