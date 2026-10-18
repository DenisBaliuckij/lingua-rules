% rules/tmr/verbs.lp
% Jewish Babylonian Aramaic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388690: Introduction to the Grammar of Jewish Babylonian Aramaic (2013), pages 53, 55, 77, 121, 144, 147, 158, 309, 310, 315, 316, 317
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   קום
%   pe_stem_ill_y_verbs          בני — grammar: "Pe-stem Ill-y verbs"
%   class_type_2                 צית
%   derived_stems_suffix_conjugation צלי — grammar: "Derived Stems Suffix conjugation"
%   af_stem                      אחיל — grammar: "Af-stem"
%   ii_w_y_pe_stem               איקום — grammar: "II-w/y Pe-stem"
%   active_participle            כתיב — grammar: "active participle"
%   ii_w_y_pe_stem_2             מית — grammar: "II-w/y Pe-stem"
%   af_stem_2                    אוקים — grammar: "Af-stem"
%   af_older_paradigm            אחיך — grammar: "Af (older paradigm)"
%   itpe_stem                    איתדר — grammar: "Itpe-stem"
%   ittaf_stem                   איתותב — grammar: "Ittaf-stem"
%   ii_w_y_pe_stem_3             ניצית — grammar: "II-w/y Pe-stem"
% Irregular (listed in data/verbs.exceptions.tsv): הו״י
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
