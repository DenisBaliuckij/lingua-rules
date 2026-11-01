% rules/mcr/nouns.lp
% Menya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78383: A Reference Grammar of Menya, an Angan Language of Papua New Guinea (2004), pages 47, 49, 50, 53, 58, 73, 122, 124, 128, 137, 141, 144, 148, 239, 245, 246
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
% Irregular (listed in data/nouns.exceptions.tsv): `
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
