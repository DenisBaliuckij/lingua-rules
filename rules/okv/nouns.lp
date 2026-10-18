% rules/okv/nouns.lp
% Orokaiva nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289385: Preliminary Notes on Orokaiva Grammar (1969), pages 28
%   doc 897692: Orokaiva Language Lessons (n.d.), pages 3, 10, 34, 41, 72
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ahije_type                   ahije
%   aja_type                     aja
%   embo_type                    embo
%   hovatu_type                  hovatu
%   namei_type                   namei
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
