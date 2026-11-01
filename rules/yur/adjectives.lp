% rules/yur/adjectives.lp
% Yurok adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 107787: Yurok (1911), pages 9
%   doc 107796: The Yurok Language: Grammar, Texts, Lexicon (1958), pages 35, 45, 46, 47, 49, 50, 51, 52, 53, 55, 56, 59, 63, 64, 71, 72, 87, 91, 108
%   doc 388915: Basic Yurok grammar (2010), pages 24, 32, 33, 34
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ceykel_type                  ceykel
%   lo_og_e_type                 lo'og^e
%   montse_type                  montse
%   peloy_type                   peloy
%   pleli_type                   pleli
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
