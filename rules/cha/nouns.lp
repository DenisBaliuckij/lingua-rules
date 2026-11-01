% rules/cha/nouns.lp
% Chamorro nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 827130: Spoken Chamorro: With Grammatical Notes and Glossary (Second Edition) (1980), pages 75
%   doc 827132: The Chamorro Language of Guam (1903), pages 16, 27, 28, 72, 86, 90, 93
%   doc 833494: Spoken Chamorro: An Intensive Language Course With Grammatical Notes and Glossary (1969), pages 52, 92, 93, 105
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   lahi_type                    lahi
%   haga_type                    haga
%   tembko_type                  tembko
%   tataho_type                  tataho
% Irregular (listed in data/nouns.exceptions.tsv): palao'an, pale
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
