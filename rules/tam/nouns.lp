% rules/tam/nouns.lp
% Tamil nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389969: A Generative Grammar of Tamil (1963), pages 33, 35, 271, 274
%   doc 759028: A Comparative Grammar of the Dravidian or South-Indian Family of Languages (1856), pages 50, 196, 342
%   doc 898401: Kaivaljanavanita: A Vedanta Poem, the Tamil Text with a Translation, a Glossary, and Gramm (1855), pages 271, 282, 291
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   manei_type                   manei
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
