% rules/ukr/nouns.lp
% Ukrainian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23884: L'Ucraïnès: estudi comparatiu entre la gramàtica del català i la de l'ucraïnès (2006), pages 59, 61, 62, 65, 80
%   doc 389225: Ukrainian (1976), pages 11, 16, 24
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine                    город — grammar: "Masculine"
%   neuter                       місто — grammar: "Neuter"
%   feminine_in_consonant        ніч — grammar: "Feminine in consonant"
%   feminine_in_vowel            сестра — grammar: "Feminine in vowel"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
