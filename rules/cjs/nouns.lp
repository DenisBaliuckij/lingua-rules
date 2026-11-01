% rules/cjs/nouns.lp
% Shor nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388298: Учебник шорского языка (1992), pages 31, 37, 53, 54, 61, 71, 72, 73, 81, 83, 93, 254
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   шана
%   class_type_2                 ағаш
%   class_type_3                 сӧс
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
