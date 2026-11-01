% rules/gle/adjectives.lp
% Irish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68423: Modern Irish: Grammatical Structure and Dialectal Variation (1989), pages 129, 171, 172, 173, 174, 175, 176
%   doc 388257: Irish (2001), pages 33, 34, 38, 44, 45, 48, 49, 55
%   doc 388260: A Grammar of the Irish Language (1896), pages 32, 34, 78, 79, 91, 92, 95, 96
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
% Irregular (listed in data/adjectives.exceptions.tsv): beag, maith, ole
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
