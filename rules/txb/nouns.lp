% rules/txb/nouns.lp
% Tocharian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28912: Tocharian B: A Grammar of Syntax and Word-Formation (2015), pages 73, 146, 152, 153, 156, 159, 160, 192, 193, 196, 198, 201, 202, 203, 204, 205, 207, 216, 217
%   doc 388765: The Tocharian Verbal System (2015), pages 216, 240, 246, 250, 278, 312, 357, 380, 387, 407, 443, 451, 493, 496
%   doc 388766: Introduction to Tocharian (2012), pages 26, 29
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   yakwe_type                   yakwe
%   saswe_type                   saswe
%   nakte_type                   ñakte
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
