% rules/sqt/nouns.lp
% Soqotri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 651182: A Grammatical Sketch of Soqotri: with Special Consideration of Negative Polarity (2016), pages 37, 50, 53, 56
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   fidhon_type                  fidhon
%   ougene_type                  ʕougene
%   ouyghn_type                  ʕouyɛghɛn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
