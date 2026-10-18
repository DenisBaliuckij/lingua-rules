% rules/kmb/verbs.lp
% Kimbundu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15224: Um brasileiro, um angolano e uma gramática do quimbundo: Os “Elementos gramaticais da líng (2020), pages 88, 97, 103, 104, 106
%   doc 96202: O Kimbundu (2005), pages 42, 44
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   handala_type                 handala
%   handale_type                 handalé
%   kuzola_type                  kuzola
% Irregular (listed in data/verbs.exceptions.tsv): cu ria
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
