% rules/tmr/nouns.lp
% Jewish Babylonian Aramaic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388690: Introduction to the Grammar of Jewish Babylonian Aramaic (2013), pages 53, 55, 77, 121, 144, 147, 158, 309, 310, 315, 316, 317
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   דרדקא
%   class_type_2                 מלכא
%   iv                           אסואת — grammar: "(IV)"
%   i                            יום — grammar: "(I)"
%   hi                           יומי — grammar: "(HI)"
%   i_2                          ריש — grammar: "(I)"
%   ii                           רעות — grammar: "(II)"
%   hi_2                         שני — grammar: "(HI)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
