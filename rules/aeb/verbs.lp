% rules/aeb/verbs.lp
% Tunisian Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21366: Tunisian Arabic Basic Course. Volumes 1 and 2. (1970), pages 86, 100, 152, 156, 178, 287, 295
%   doc 21437: Course in Tunisian Arabic (n.d.), pages 39, 95, 357, 378, 379
%   doc 21471: Tunisian Arabic in 30 Lessons: Learn Arabic Just The Way As People Talk ! (2018), pages 24, 46
%   doc 854489: Peace Corps/Tunisia Course in Tunisian Arabic (1979), pages 30, 40, 96, 358, 379, 380
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   group_2_verb                 qra — grammar: "Group 2 verb"
%   group_1_verb                 ktib — grammar: "Group 1 verb"
%   imshis_type                  imshis
%   ccw_verbs                    leq — grammar: "CCW Verbs"
%   perfect_singular_first_and_second_person sriy — grammar: "Perfect Singular, First and Second Person ~ CCW Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
