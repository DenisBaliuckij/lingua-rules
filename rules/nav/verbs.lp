% rules/nav/verbs.lp
% Navajo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 91168: An Intermediate Grammar of Navajo: A Guide for Bilingual Educators (2009), pages 134, 137, 146, 201, 287, 299, 300, 301, 303, 307, 308, 317, 319, 324, 325, 327, 329, 331, 334, 338, 339
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   c0_im_perfective_base_paradigm yishcha — grammar: "0-Im perfective Base Paradigm"
%   imperfective_0_fteeh         fteeh — grammar: "IMPERFECTIVE (0) - - fteeh"
%   imperfective_0_och_iish_to_saw_it_transi ch'iish — grammar: "IMPERFECTIVE (0) - - Och'iish: to saw it, TRANSITIVE"
%   imperfective_0_tchin_to_smell_it_transit chin — grammar: "IMPERFECTIVE (0) - - tchin: to smell it, TRANSITIVE"
%   perfective_si_dtin           dtin — grammar: "Perfective (Si) - - dtin"
%   perfective_yi_0_igai_to_whiten_obj_trans igai — grammar: "Perfective Yi-(0) - - Igai: to whiten Obj. (Transitional Aspect - Causative -l), TRANSITIVE"
%   perfective_yi_0_igaii_to_whiten_obj_tran igaii — grammar: "Perfective Yi-(0) - - Igaii: to whiten Obj. (Transitional - Causative -I), TRANSITIVE"
%   niists_qs_type               niists'Qs
%   optative_wo_tch_id_transitive tch'id — grammar: "Optative (Wo) - - tch'id, TRANSITIVE"
%   optative_wo_tteeh_intransitive tteeh — grammar: "Optative (Wo) - - tteeh, INTRANSITIVE"
%   yi_0_imperfective_conjugation yiists'QS — grammar: "Yi-0 Imperfective conjugation"
%   optative_wo_0cha_to_cry_intransitive shcha — grammar: "Optative (Wo) - - 0cha: to cry, INTRANSITIVE"
%   perfective_yi_0_ich_iil_to_curl_obj_to_m ich'iil — grammar: "Perfective Yi-(0) - - Ich'iil: to curl Obj., to make curly (Transitional Aspect), TRANSITIVE"
%   perfective_yi                maad — grammar: "Perfective (Yi)"
%   ni_imperfective_neuter_verbs dinilchii — grammar: "Ni-Imperfective neuter verbs"
%   perfective_yi_2              ch'id — grammar: "Perfective (Yi)"
%   deeshteel_type               deeshteel
%   ni_imperfective              eel — grammar: "Ni-Imperfective"
%   ni_imperfective_2            loos — grammar: "Ni-Imperfective"
%   nideeshteel_type             nideeshteel
%   perfective_si                nod — grammar: "Perfective (Si)"
%   perfective_si_2              tat — grammar: "Perfective (Si)"
%   imperfective_0_toaad         toaad — grammar: "IMPERFECTIVE (0) - - toaad"
%   iterative_na_yi_0            ts'os — grammar: "Iterative na-Yi-(0)"
%   perfective_si_3              ts'ps — grammar: "Perfective (Si)"
%   perfective_yi_3              ts'wz — grammar: "Perfective (Yi)"
%   c0_im_perfective_extended_base_paradigm yishch'id — grammar: "0 - Im perfective Extended Base Paradigm"
%   si_imperfective              aah — grammar: "Si-Imperfective"
% Irregular (listed in data/verbs.exceptions.tsv): b e, baa Nishteeh, ni- ftsooz
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
