% rules/mkd/verbs.lp
% Macedonian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389015: Macedonian (LW/M 117) (2002), pages 16, 18, 21, 26, 29
%   doc 389016: Macedonian (2005), pages 16, 17, 27, 32, 33
%   doc 389017: A Grammar of the Macedonian Literary Language (1952), pages 51, 54, 56, 60, 91, 94, 106
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c2a_stem_aor                 моли — grammar: "2a = /-stem; а = л-AOR"
%   c2a_i_stem_a_i_ao            gali, moli — grammar: "2a = i-stem, a = i-AO"
%   c3h_ao                       bie — grammar: "3h = Ø -AO"
%   c2c_a_ao                     broi — grammar: "2c = a-AO"
%   c1_a_stem                    c#ita — grammar: "1 = a-stem"
%   c3f_o_ao_c_dental_ao_lf      dade — grammar: "3f = o - AO + C ( = dental ) > Ø / AO.LF"
%   c2b_e_ao                     ozdravi — grammar: "2b = e-AO"
%   peiuasa_type                 peiuasa
%   c3a_e_stem                   pis#e — grammar: "3a = e-stem"
%   c3b_a_ao_velar_alternation   plac#e — grammar: "3b = a-AO + velar alternation"
%   c3g_o_ao_velar_alternation   rec#e — grammar: "3g = o - AO + velar alternation"
%   c3e_o_ao                     trese — grammar: "3e = o - AO"
%   c3d_e_ao                     umre — grammar: "3d = e-AO"
%   c3h_e_stem_h_0_aor           бие — grammar: "3h = e-stem; h = 0-AOR"
%   interminative_imperfect_1_participle видел — grammar: "interminative imperfect 1-participle"
%   c3f_e_stem_f_o_aor_dental_0_aor_form даде — grammar: "3f = e-stem; f = O-AOR + С (= dental) > 0/AOR /-form"
%   terminative_imperfect_1_participle направи — grammar: "terminative imperfect 1-participle"
%   c2b_stem_aor_velar_alternation оздрави — grammar: "2b = /-stem; а = л-AOR + velar alternation"
%   terminative_imperfect_1_participle_2 пел — grammar: "terminative imperfect 1-participle"
%   e_stem_aor                   пише — grammar: "За = e-stem; За = л-AOR"
%   e_stem_aor_velar_alternation плаче — grammar: "ЗЬ = e-stem; ЗЬ = л-AOR + velar alternation"
%   c3g_e_stem_g_o_aor_velar_alternation рече — grammar: "3g = e-stem; g = O-AOR + velar alternation"
%   e_stem_aor_2                 тресе — grammar: "Зе = e-stem; Зе = л-AOR"
%   c3d_e_stem_d_e_aor           умре — grammar: "3d = e-stem; d = e-AOR"
%   c1_a_stem_2                  чита — grammar: "1 = a-stem"
%   ymh_type                     yMH
%   c3c_a_ao_vl_alternation      bere — grammar: "3c = a-AO + VL~ Ø alternation"
%   c3c_e_stem_a_o_r_f_v_0_alternation бере — grammar: "3c = e-stem; с = « - A O R -f V ~ 0 alternation"
% Irregular (listed in data/verbs.exceptions.tsv): bese, bhjih, nace, rpece, sum
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
