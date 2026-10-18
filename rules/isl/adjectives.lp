% rules/isl/adjectives.lp
% Icelandic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388284: Icelandic (2011), pages 12, 14, 15, 18, 19, 21
%   doc 388287: Mimir Icelandic Grammar (n.d.), pages 1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 25, 26, 29, 30, 31, 32, 33, 34, 35, 36, 37
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   strong_and_weak_inflection   gulur — grammar: "strong and weak inflection"
%   strong_adjectives            boginn — grammar: "Strong Adjectives"
%   strong_adjectives_2          ríkur — grammar: "Strong Adjectives"
%   annar_type                   annar
%   i_umlaut_pattern             ungur — grammar: "i-umlaut pattern"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
