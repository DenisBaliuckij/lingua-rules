% rules/heb/adjectives.lp
% Modern Hebrew adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67768: Easing Into Modern Hebrew Grammar: A User-friendly Reference and Exercise Book (Vol. I) (n.d.), pages 60, 391, 396, 441, 460, 466, 481, 492, 494, 512, 521, 524, 536, 543, 552, 576, 577, 586, 591, 592
%   doc 67881: Modern Hebrew Structure (1978), pages 48, 49, 95, 96, 100, 162, 163
%   doc 67888: Predicate Formation in the Verbal System of Modern Hebrew (1987), pages 19, 20
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gadol_type                   gadol
%   katan_type                   katan
%   zariz_type                   zariz
%   samen_type                   samen
% Irregular (listed in data/adjectives.exceptions.tsv): rBcini 'serious
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
