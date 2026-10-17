% rules/pl/adjectives.lp
% Polish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22986: Polish: An Essential Grammar (2014), pages 53, 71, 76, 79, 81, 87, 106, 146, 157, 158, 246, 248, 396, 397, 398, 399, 400, 401, 402, 403, 404, 408, 414, 417, 419, 423, 425
%   doc 388455: A Grammar of Contemporary Polish (2002), pages 58, 61, 88, 98, 102, 103, 104, 118, 120, 121, 123, 231, 232, 241, 242, 243, 252, 253, 254, 256, 325, 326, 327
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   zaden_type                   żaden
%   maa_type                     ma∏a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
