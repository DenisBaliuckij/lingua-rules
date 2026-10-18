% rules/ben/verbs.lp
% Bengali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389327: Bengali (2012), pages 37, 97, 98, 99, 100, 102, 170, 171, 396
%   doc 852176: A grammar of the Bengal language by Nathaniel Brassey Halhed (1778), pages 152, 154, 155, 156
%   doc 852243: Bengali: A Comprehensive Grammar (2015), pages 44, 151, 176, 177, 178, 179, 180, 181, 182, 183, 184
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_1_cvc_a_u_d_mutation   bujhā — grammar: "Class 1 CVC (a) u - d mutation"
%   class_1_cvc_c_i_e_mutation   likhā — grammar: "Class 1 CVC (c) i - e mutation"
%   class_1_cvc_b_o_f_mutation   bolā — grammar: "Class 1 CVC (b) o - f mutation"
%   phela_type                   phela
%   class_2_e_vc_oth_rise_ascend oTh — grammar: "Class 2 (e) VC oTh rise, ascend"
%   class_2_f_cac_uhkh_stay_remain_live uhkh — grammar: "Class 2 (f) CaC Uhkh stay, remain, live"
%   ca_chowh_want                chowh — grammar: "Ca chowh want"
%   q_caca                       chlhfnh — grammar: "(q) CaCa"
%   class_5_cvca_or_caca_o_cuca_couca_extend gvmhfnh — grammar: "Class 5 CVCa or CaCa (o) CuCa, CouCa (extended verbs)"
%   p_cvca                       `bhZhfnh — grammar: "(p) CVCa"
%   class_1_cvc                  lekha — grammar: "Class 1 (CVC)"
%   ca_phowh_get_receive         phowh — grammar: "Ca phowh get, receive"
%   class_1_cvc_2                bojha — grammar: "Class 1 (CVC)"
%   ach_type                     ach
%   likha_type                   likha
% Irregular (listed in data/verbs.exceptions.tsv): `qowh, ahn h, ahsh, be present, mowh, xhowh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
