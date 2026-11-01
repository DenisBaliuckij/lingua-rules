% rules/tar/verbs.lp
% Choguita Rarámuri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 319: A grammar of Choguita Rarámuri: In collaboration with Luz Elena León Ramírez, Sebastián Fu (2022), pages 291, 442, 443, 502, 611
%   doc 16605: A grammar of Choguita Rarámuri (2022), pages 287, 438, 439, 498, 607
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   alternating_verbs            biʔw-a — grammar: "alternating verbs"
%   rane_type                    raʔnè
%   class_1                      beˈnè — grammar: "Class 1"
%   class_3                      raʔˈlà — grammar: "Class 3"
%   class_2                      suˈkú — grammar: "Class 2"
%   postural_positional_predicates aˈtí — grammar: "postural/positional predicates"
%   postural_positional_predicates_2 wiˈlí — grammar: "postural/positional predicates"
%   postural_positional_predicates_3 buˈʔí — grammar: "postural/positional predicates"
%   postural_positional_predicates_4 maˈní — grammar: "postural/positional predicates"
%   postural_positional_predicates_5 tʃ͡uˈkú — grammar: "postural/positional predicates"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
