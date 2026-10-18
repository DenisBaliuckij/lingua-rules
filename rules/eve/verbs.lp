% rules/eve/verbs.lp
% Even verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388593: Even (1995), pages 12, 16, 19
%   doc 388597: A Grammatical Sketch of Even (2010), pages 3, 6
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   type_3                       bi — grammar: "Type 3"
%   type_2                       goon — grammar: "Type 2"
%   type_i                       haa — grammar: "Type I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
