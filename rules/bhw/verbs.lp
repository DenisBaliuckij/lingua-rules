% rules/bhw/verbs.lp
% Biak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 905870: BIAK MORPHOSYNTAX (2008), pages 40, 41, 49, 65, 66, 68, 70, 71, 72, 122, 252, 256
%   doc 905871: Biak: Description of an Austronesian Language of Papua (2006), pages 84, 90, 261, 263, 341
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   iso_type                     iso
%   consonantal_pattern_type_2_cv_initial_ro baber — grammar: "Consonantal Pattern Type 2 (CV initial roots/stems)"
%   consonantal_pattern_type_2_cv_initial_ro_2 kaber — grammar: "Consonantal Pattern Type 2 (CV initial roots/stems)"
%   consonantal_pattern_type_2_cv_initial_ro_3 mam — grammar: "Consonantal Pattern Type 2 (CV initial roots/stems)"
%   consonantal_pattern_type_2_cv_initial_ro_4 ra — grammar: "Consonantal Pattern Type 2 (CV initial roots/stems)"
%   consonantal_pattern_type_2_cv_initial_ro_5 ro — grammar: "Consonantal Pattern Type 2 (CV initial roots/stems)"
%   nominal_predicates_e_g_be_a_teacher kuru-si-ku — grammar: "Nominal Predicates (e.g. 'be a teacher')"
%   consonantal_pattern_type_1_cc_initial_ro swarepen — grammar: "Consonantal Pattern Type 1 (CC initial roots/stems)"
%   consonantal_pattern_type_1_cc_initial_ro_2 fnak — grammar: "Consonantal Pattern Type 1 (CC initial roots/stems)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
