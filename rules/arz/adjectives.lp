% rules/arz/adjectives.lp
% Egyptian Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 823957: A Reference Grammar of Egyptian Arabic (1979), pages 16, 21, 22, 37, 38, 116, 151, 270, 272, 273, 275, 276, 306, 318, 319
%   doc 839257: Comparative Morphology of Standard and Egyptian Arabic (2000), pages 82, 91, 92, 214
%   doc 853685: A Comprehensive Study of Egyptian Arabic. Volume Three: A Reference Grammar of Egyptian Ar (1979), pages 19, 20, 21, 30, 31, 36, 145, 184, 198, 199, 205, 206, 207, 304, 308
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   nisba_adjectives             masri — grammar: "nisba adjectives"
%   kuwayyis_type                kuwayyis
%   kibiir_type                  kibiir
%   kitaar_type                  kitaar
%   taani_type                   taani
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
