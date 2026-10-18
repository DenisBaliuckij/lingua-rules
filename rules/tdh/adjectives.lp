% rules/tdh/adjectives.lp
% Thulung Rai adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 18: Aspects of the grammar of Thulung Rai: an endangered Himalayan language (2002), pages 146, 170, 173, 177, 179, 181, 182, 184, 185, 200, 206, 207
%   doc 15644: Thulung Rai (2004), pages 5, 7, 17, 18
%   doc 15646: Sketch of Thulung Grammar with three texts and a glossary (1975), pages 57, 64, 119, 153
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   possessive_adjectives        a — grammar: "possessive adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
