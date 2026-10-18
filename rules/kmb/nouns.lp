% rules/kmb/nouns.lp
% Kimbundu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15224: Um brasileiro, um angolano e uma gramática do quimbundo: Os “Elementos gramaticais da líng (2020), pages 88, 97, 103, 104, 106
%   doc 96202: O Kimbundu (2005), pages 42, 44
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
% Irregular (listed in data/nouns.exceptions.tsv): Ribitu, Rimbondo, Rimi, Rimvula, Ritatu, Riunda, Riuta, Rixi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
