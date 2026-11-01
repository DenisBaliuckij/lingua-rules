% rules/kas/nouns.lp
% Kashmiri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389792: Kashmiri: A Cognitive-Descriptive Grammar (1996), pages 226, 227, 228, 229, 245, 246, 247, 276, 347, 354, 355, 356, 357, 358, 359, 360, 361, 362, 368, 369, 370, 376
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   feminine                     ku:r — grammar: "Feminine"
%   masculine                    laQIG — grammar: "Masculine"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
