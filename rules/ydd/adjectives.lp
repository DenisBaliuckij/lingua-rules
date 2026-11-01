% rules/ydd/adjectives.lp
% Yiddish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388703: Yiddish (2010), pages 16, 17, 18
%   doc 388704: Yiddish: A Survey and a Grammar (1979), pages 241, 242, 243, 257, 258, 259, 260, 263, 265, 266, 268, 269, 272, 277, 279, 281, 282, 283, 284, 285, 289, 312
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   first_declension             gjt — grammar: "First declension"
%   gut_type                     gut
%   starker_type                 starker
%   am_type                      am
%   brait_type                   brait
%   grois_type                   grois
%   alt_type                     alt
%   erger_type                   erger
%   hoix_type                    hoix
%   klam_type                    klam
%   xuuiyv_type                  xuuiyv
%   ziis_type                    ziis
% Irregular (listed in data/adjectives.exceptions.tsv): i k
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
