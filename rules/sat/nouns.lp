% rules/sat/nouns.lp
% Santali nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389299: A Grammar of the Santal Language (1873), pages 37, 51, 179, 197, 203, 205, 207, 208, 224, 225, 226, 227, 230, 238, 239, 244, 248, 269, 276, 280, 281, 282, 299, 300, 312
%   doc 851551: A Grammar of the Santhal Language (1873), pages 34, 35, 37, 50, 176, 178, 181, 183, 206, 207, 209, 211, 223, 224, 225, 226, 229, 231, 238, 247, 268, 271, 294, 303
%   doc 851554: An Introduction to the Santal Language (n.d.), pages 35, 59
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   first_declension             Kora — grammar: "FIRST DECLENSION"
%   tanga_type                   Tanga
%   third_declension             Burn — grammar: "THIRD DECLENSION"
%   second_declension            Tonga — grammar: "SECOND DECLENSION"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
