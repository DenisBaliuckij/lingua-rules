% rules/sux/nouns.lp
% Sumerian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7938: Semitic Languages: Outline of a Comparative Grammar (1997), pages 381, 382, 412
%   doc 47915: Nueva gramática de Sumerio (2018), pages 54
%   doc 388772: A Descriptive Grammar of Sumerian (2010), pages 234, 698, 704
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   personales                   diĝir — grammar: "Personales"
%   personales_colectivos        engar — grammar: "Personales colectivos"
%   no_personales                é — grammar: "No personales"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
