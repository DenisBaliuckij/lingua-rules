% rules/mlv/nouns.lp
% Mwotlap nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895694: The Oceanic Languages (2002), pages 178, 195, 371, 719, 725, 854
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   suffixed_nouns               nelpavine — grammar: "suffixed nouns"
%   suffixed_nouns_2             nompu — grammar: "suffixed nouns"
%   suffixed_nouns_3             ntelgo — grammar: "suffixed nouns"
% Irregular (listed in data/nouns.exceptions.tsv): nimto, nito
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
