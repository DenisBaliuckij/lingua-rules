% rules/xil/nouns.lp
% Illirian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105613: Grammatica della lingua illirica etc. (1838), pages 106, 114, 118, 119, 120, 121, 123, 124, 130, 131, 134, 135, 140, 146, 147, 148, 150, 155, 156, 176
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   tli_type                     tlì
% Irregular (listed in data/nouns.exceptions.tsv): cègljáde
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
