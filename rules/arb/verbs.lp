% rules/arb/verbs.lp
% Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14256: A Reference Grammar of Modern Standard Arabic (2017), pages 135, 165, 166, 174, 175, 341, 507, 516, 526, 539, 556, 566, 567, 579, 581, 582, 591, 603, 605, 646, 648
%   doc 108586: Grammatica Arabica (1834), pages 65, 217, 218, 248, 249, 276, 393, 394, 398, 403, 408, 409, 410, 440, 442
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   form_v_hamza_initial_root    تأخّر — grammar: "Form V hamza-initial root"
%   form_vi_hamza_initial_root   oôneBÉnànj — grammar: "Form VI hamza-initial root"
%   form_i_hamza_final_root      qaraʾa — grammar: "Form I hamza-final root"
%   form_iii_hamza_final_root    أعجب — grammar: "Form III hamza-final root"
%   form_vi_hamza_final_root     oCÉnaÉnµànj — grammar: "Form VI hamza-final root"
%   form_vi_defective_root       ≈YGónànj — grammar: "Form VI Defective root"
%   verbum_ad_similatum_quod_primam_radicale وصف — grammar: "Verbum ad similatum, quod primam radicalem habet Wawa m"
%   form_v_hamza_final_root      تنبّأ — grammar: "Form V hamza-final root"
%   form_viii_geminate_root      tπnàrënj — grammar: "Form VIII Geminate root"
%   form_iv_hollow_root          أذيع — grammar: "Form IV Hollow root"
%   form_vii_hollow_root         oRÉërænj — grammar: "Form VII Hollow root"
%   form_viii_hollow_root        oQÉàrînj — grammar: "Form VIII Hollow root"
%   form_ii_sound_root           sawwar — grammar: "Form II Sound root"
%   imperativus_nervosus_levis   خشیت — grammar: "imperativus nervosus levis"
%   jussive_of_yaa_defective_verb_ii_aa nsa — grammar: "Jussive of yaa√-defective verb (-ii/-aa)"
%   hollow_yaa_verb              biﬁ — grammar: "Hollow yaa√ verb"
%   hollow_waaw_verb             qul — grammar: "Hollow-waaw verb"
%   class_type                   يقبل
%   jussive_of_yaa_defective_verb_ii_aa_2 bni — grammar: "Jussive of yaa√-defective verb (-ii/-aa)"
%   jussive_of_waaw_defective_verb bdu — grammar: "Jussive of waaw-defective verb"
% Irregular (listed in data/verbs.exceptions.tsv): râ'a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
