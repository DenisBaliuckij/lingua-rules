% rules/dyy/nouns.lp
% Dyaabugay nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289417: A sketch grammar of Dyaabugay (1980), pages 49, 52
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   special_plural_forms         bibuy — grammar: "special plural forms"
%   special_plural_forms_2       pama — grammar: "special plural forms"
%   special_plural_forms_3       pumba — grammar: "special plural forms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
