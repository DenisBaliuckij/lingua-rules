% rules/nau/adjectives.lp
% Nauruan adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 897513: Nauruan Numeral System (Revised) (2023), pages 285, 287, 289, 290, 299, 301, 302, 303, 310
%   doc 897518: Nauruan Modal Aspect and Prospective Aspect (2024), pages 112, 123, 141, 142
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
% Irregular (listed in data/adjectives.exceptions.tsv): ea
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
