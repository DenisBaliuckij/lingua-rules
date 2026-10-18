% rules/gez/verbs.lp
% Ge'ez verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28906: Basics of Ancient Ethiopic: A Complete Grammar, Workbook, and Lexicon (2022), pages 43, 45, 84, 113, 153, 166, 201, 202, 211, 212, 223, 224, 234, 235, 242, 248, 249, 250
%   doc 28927: Ethiopic Grammar (1893), pages 378
%   doc 93114: Ge'ez: Classical Ethiopic (1993), pages 15, 16
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   iii_root_verb                ሆደ — grammar: "III-\ Root Verb"
%   iii_m_root_verb              ሰጠ — grammar: "III-m Root Verb"
%   strong_verb_paradigm         ?t — grammar: "Strong Verb Paradigm"
%   g_strong_verbs               f — grammar: "G Strong Verbs"
%   i_guttural_forms             · — grammar: "I Guttural Forms"
%   c1_cd_root_verb              ma — grammar: "1-CD Root Verb"
%   ii_guttural                  l'lhh — grammar: "II Guttural"
%   perfect_g_stem_111_m_l_guttural_verbs c — grammar: "Perfect G-Stem 111-m/l' Guttural Verbs"
%   i_guttural_perfect_paradigm_m ii'l — grammar: "I Guttural Perfect Paradigm (M":)"
%   ii_guttural_2                mh — grammar: "II Guttural"
%   i_guttural_forms_2           mt — grammar: "I Guttural Forms"
%   ill_guttural_subjunctive_paradigm_o_m e-n — grammar: "Ill Guttural Subjunctive Paradigm (O?.m:)"
%   causative_i_a_root_verb      mu — grammar: "Causative I-a> Root Verb"
%   i_guttural_forms_3           r — grammar: "I Guttural Forms"
%   c11_m                        rht — grammar: "11-m"
%   ill_guttural_imperative_paradigm_0_tft ·o — grammar: "Ill Guttural Imperative Paradigm (0?.tft:)"
%   c11_m_2                      I — grammar: "11-m"
%   c11_m_3                      l(t — grammar: "11-m"
%   i_guttural_forms_4           rh· — grammar: "I Guttural Forms"
%   c113_1_weep                  see — grammar: "113-1' /weep"
%   i_guttural_forms_5           ·t — grammar: "I Guttural Forms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
