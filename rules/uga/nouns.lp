% rules/uga/nouns.lp
% Ugaritic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292706: Ugaritic Textbook: Grammar, Texts in Transliteration, Cuneiform Selections, Glossary, Indi (1998), pages 173
%   doc 389674: A Manual of Ugaritic (2009), pages 50, 51, 65
%   doc 827771: An Introduction to Ugaritic (2012), pages 52, 68, 69, 70, 72, 77, 81, 229
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   mit_type                     mit
%   rbt_type                     rbt
%   alp_type                     alp
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
