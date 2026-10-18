% rules/kat/adjectives.lp
% Georgian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 54371: Georgian: A Comprehensive Grammar (2018), pages 51, 52, 58, 66, 67, 73, 74, 88, 100, 148, 238, 239, 241, 245, 250, 252, 353, 356, 358, 372, 379, 382, 389, 393, 397, 400
%   doc 54383: Georgian: A Structural Reference Grammar (1995), pages 54, 56, 70, 97, 98, 99, 101, 105, 307, 308, 313, 314, 385, 388, 414, 465, 474, 478, 488, 489, 544
%   doc 54387: The Georgian Verb (n.d.), pages 57, 58, 77, 79, 80, 88, 91, 92, 93, 94, 356, 363, 376, 381, 390, 398, 424, 426, 432, 484, 528, 530, 542, 544, 557, 567, 587
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   consonant_stem_syncopating_adjectives წითელი — grammar: "consonant-stem syncopating adjectives"
%   non_syncopating_consonant_stem_adjective თეთრი — grammar: "non-syncopating consonant-stem adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
