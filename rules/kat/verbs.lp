% rules/kat/verbs.lp
% Georgian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 54371: Georgian: A Comprehensive Grammar (2018), pages 51, 52, 58, 66, 67, 73, 74, 88, 100, 148, 238, 239, 241, 245, 250, 252, 353, 356, 358, 372, 379, 382, 389, 393, 397, 400
%   doc 54383: Georgian: A Structural Reference Grammar (1995), pages 54, 56, 70, 97, 98, 99, 101, 105, 307, 308, 313, 314, 385, 388, 414, 465, 474, 478, 488, 489, 544
%   doc 54387: The Georgian Verb (n.d.), pages 57, 58, 77, 79, 80, 88, 91, 92, 93, 94, 356, 363, 376, 381, 390, 398, 424, 426, 432, 484, 528, 530, 542, 544, 557, 567, 587
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dg_eb_i_type                 dg-eb-i
%   i_series                     vts’itldebi, vtbebi — grammar: "I Series"
%   stative_verb                 k'id — grammar: "Stative Verb"
%   mitsema_type                 mitsema
%   c_od_n_eb_a_type             c+od+n-eb-a
%   i_series_ii_conjugation      da-malva — grammar: "I series (II conjugation)"
%   jd_eb_i_type                 jd-eb-i
%   present_sub_series_of_nd     nd — grammar: "Present Sub-Series of -nd-"
%   b_group                      siq’varuli — grammar: "B-group"
%   qola_type                    q’ola
%   tkv_a_type                   tkv-a
%   tkva_type                    tkva
%   class_type                   მტვრევა
%   class_type_2                 ნდომება
%   c1a_s_o_ind                  ყვარება — grammar: "1A. (S., O.ind.)"
%   amb_ob_a_type                amb-ob-a
%   i_t_q_v_i_type               i-t'q'v-i
%   jd_om_i_type                 jd-om-i
%   qopna_type                   q’opna
%   i_conjugation_two_stem_verbs და-ხატ-ავ — grammar: "I conjugation two-stem verbs"
%   class_type_3                 მოვითხოვ
%   iii_conjugation_verbs        შველა — grammar: "III conjugation verbs"
%   class_type_4                 სვამ
%   brma_v_d_eb_type             brma-v-d-eb, cd-eb, e-geb-eb, e-rt-v-eb ...
%   mkonia_type                  mkonia
%   class_type_5                 ამბობს
%   imperfect_s_o_d_o_ind        აძლევს — grammar: "Imperfect (S., O.d., O.ind.)"
%   class_type_6                 გამო-ვ-ც-ემ
%   class_type_7                 და-წერ
%   ablaut_verbs                 დაკრეფა — grammar: "Ablaut verbs"
%   conditional_s_o_d            იტყვას — grammar: "Conditional (S., O.d.)"
%   bipersonal_verbs_with_ending_in_present მეგონება — grammar: "bipersonal verbs with -ია ending in present tense"
%   class_type_8                 მიტანა
%   conditional_a_s_o_d_o_ind    მოყვანა — grammar: "Conditional (A. S., O.d. / O.ind.)"
%   class_type_9                 ტყვ-ი
%   i_series_i                   უნდა — grammar: "I სერია (Series I)"
%   ii_ii_series                 ცემა — grammar: "II სერია (II Series)"
%   ii_ii_series_2               ცემინება — grammar: "II სერია (II Series)"
%   class_type_10                წვება
%   class_type_11                ხედავ
%   class_type_12                დგება
%   class_type_13                უბნებ-ს
%   class_type_14                ლევ
%   b_m_eb_type                  b-m-eb, bad-eb, kc-e, č'ir-eb
%   c_a_v_i_kc_e_od_e_type       c'a-v-i-kc-e-od-e
%   c_a_v_i_kc_e_od_i_type       c'a-v-i-kc-e-od-i
%   da_v_brma_v_d_eb_od_e_type   da-v-brma-v-d-eb-od-e
%   da_v_e_rt_od_e_type          da-v-e-rt-od-e
%   da_v_e_rt_od_i_type          da-v-e-rt-od-i
%   da_v_e_rt_v_eb_od_e_type     da-v-e-rt-v-eb-od-e
%   da_v_e_rt_v_eb_od_i_type     da-v-e-rt-v-eb-od-i
%   da_v_i_b_m_eb_od_e_type      da-v-i-b-m-eb-od-e
%   da_v_i_b_m_eb_od_i_type      da-v-i-b-m-eb-od-i
%   da_v_i_bad_eb_od_e_type      da-v-i-bad-eb-od-e
%   da_v_i_c_ir_eb_od_e_type     da-v-i-č'ir-eb-od-e
%   da_v_i_c_ir_eb_od_i_type     da-v-i-č'ir-eb-od-i
%   da_v_tvr_eb_od_e_type        da-v-tvr-eb-od-e
%   da_v_tvr_eb_od_i_type        da-v-tvr-eb-od-i
%   i_series_ii_conjugation_2    da-vkhat'av — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_3    da-vkhat'avde — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_4    da-vkhat'avdi — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_5    da-vts'er — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_6    da-vts'erde — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_7    da-vts'erdi — grammar: "I series (II conjugation)"
%   davemalebi_type              davemalebi
%   davemalebode_type            davemalebode
%   davemalebodi_type            davemalebodi
%   davimalebi_type              davimalebi
%   davimalebode_type            davimalebode
%   davimalebodi_type            davimalebodi
%   e_rt_od_type                 e-rt-od
%   ga_v_i_c_r_eb_od_i_type      ga-v-i-c'r-eb-od-i
%   ga_v_i_q_op_od_e_type        ga-v-i-q'-op-od-e
%   ga_v_i_q_op_od_i_type        ga-v-i-q'-op-od-i
%   ga_v_i_c_r_eb_od_e_type      ga-v-i-č'r-eb-od-e
%   k_et_d_eb_type               k'et-d-eb
%   le_v_cd_eb_od_e_type         le-v-cd-eb-od-e
%   mi_v_e_geb_eb_od_e_type      mi-v-e-geb-eb-od-e
%   parto_v_d_eb_type            parto-v-d-eb, c'itl-d-eb, me+p-d-eb, q'ru-v-d-eb
%   q_op_od_type                 q'-op-od
%   vemale_type                  vemale, vimale
%   vemalebode_type              vemalebode
%   vemalo_type                  vemalo, vimalo
%   i_series_ii_conjugation_8    vimalebode, vts'erde — grammar: "I series (II conjugation)"
%   i_series_ii_conjugation_9    vkhat’avde — grammar: "I series (II conjugation)"
%   c_r_eb_type                  č'r-eb
%   se_v_cd_eb_od_i_type         še-v-cd-eb-od-i
%   future_a_s_o_d_o_ind         ათქმევინებ — grammar: "Future (A. S., O.d., O.ind.)"
%   present_subjunctive_a_s_o_d_o_ind ამბობინებდე — grammar: "Present Subjunctive (A. S., O.d., O.ind.)"
%   causative_conjugation_future აქონინებ — grammar: "Causative Conjugation (Future)"
%   present_subjunctive_a_s_o_d_o_ind_2 აძლევინებდე — grammar: "Present Subjunctive (A. S., O.d., O.ind.)"
%   present_subjunctive_c_s_o_d  ვიძლევინებდე — grammar: "Present Subjunctive (C. S., O.d.)"
%   passive_static_verbs         მავალია — grammar: "passive static verbs"
%   class_type_15                მესურვებოდა
%   class_type_16                მესურვებოდეს
%   future_a_s_o_d_o_ind_2       მივაცემინებ — grammar: "Future (A. S., O.d., O.ind.)"
%   present_subjunctive_b_s_o_d_o_ind_o_d უამბობინებდე — grammar: "Present Subjunctive (B. S., O.d., O.ind., O.d.)"
%   perfect_subjunctive          ქონდეს — grammar: "Perfect Subjunctive"
%   c2a_s_o_ind                  შეუყვარდება — grammar: "2A. (S., O.ind.)"
% Irregular (listed in data/verbs.exceptions.tsv): kv, v-a-r, აძლევ, ბამავს, დავდივარ, მო-ბ, მო-სხ, სხამავს, ქონა, ცემ, ხედავა
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
