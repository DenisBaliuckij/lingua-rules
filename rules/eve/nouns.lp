% rules/eve/nouns.lp
% Even nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388593: Even (1995), pages 12, 16, 19
%   doc 388597: A Grammatical Sketch of Even (2010), pages 3, 6
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   possessive_declension_personal d'uu-n — grammar: "Possessive declension Personal"
%   type_i                       d'uu — grammar: "Type I"
%   type_3                       d'uu-I — grammar: "Type 3"
%   type_2                       hurkan — grammar: "Type 2"
%   possessive_declension_reflexive d'uu-j — grammar: "Possessive declension Reflexive"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
