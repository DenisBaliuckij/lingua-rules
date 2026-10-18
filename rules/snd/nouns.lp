% rules/snd/nouns.lp
% Sindhi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79622: سنڌي بوليء جو گرامر (Sindhi Boli-a- Jo Grammer) (2011), pages 255, 264, 271, 275, 285, 286
%   doc 924647: Grammar of the Sindhi Language Compared with the Sanskrit, Prakrit and the Cognate Indian  (1872), pages 178, 227, 242, 276, 337, 372, 375, 381, 383, 384, 391, 392, 401, 402, 426, 429
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   sa_u_type                    sa-u
%   fem_nouns_ending_in_u        bhenu — grammar: "fem. nouns ending in u"
%   nouns_ending_in_o            cotho — grammar: "Nouns ending in o"
%   fem_nouns_ending_in_u_2      ma.u — grammar: "fem. nouns ending in u"
%   nouns_ending_in_o_2          nao — grammar: "Nouns ending in o"
%   fem_nouns_ending_in_u_3      nuhu — grammar: "fem. nouns ending in u"
%   nouns_ending_in_o_3          tab — grammar: "Nouns ending in o"
%   nouns_ending_in_o_4          tobo — grammar: "Nouns ending in o"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
