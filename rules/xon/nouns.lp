% rules/xon/nouns.lp
% Konkomba nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 37626: Aspects of the Grammar of Likpakpaanl: A Mabia (Gur) Language spoken in Ghana (2021), pages 110, 111, 151, 152, 221, 222
%   doc 37627: Peace Corps Konkomba (Likpakpaaln) O.P.L Workbook (Oral Proficiency Learning) (n.d.), pages 10, 25
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   gender_ii_tiib_mam_cl_3_4    agbaagbaa — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_2  cha-l — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_i_u_cl_1_2            gbee — grammar: "Gender I (u-: CL. 1/2)"
%   gender_i_u_cl_1_2_2          joóon — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_3  kaacha — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_4  kalba — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_5  konl — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_i_u_cl_1_2_3          kpaal — grammar: "Gender I (u-: CL. 1/2)"
%   gender_iii_n_i_cl_5_6        laa-l — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_i_u_cl_1_2_4          lapo — grammar: "Gender I (u-: CL. 1/2)"
%   gender_i_u_cl_1_2_5          lo — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_6  loor — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_iii_n_i_cl_5_6_2      maa-l — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_iii_n_i_cl_5_6_3      mmii — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_iii_n_i_cl_5_6_4      muu-l — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_ii_tiib_mam_cl_3_4_7  na — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_i_u_cl_1_2_6          naa — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_8  naa-l — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_9  naandala — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_iii_n_i_cl_5_6_5      ndi — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_iii_n_i_cl_5_6_6      ndoo — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_iii_n_i_cl_5_6_7      neel — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_iii_n_i_cl_5_6_8      ngen — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_i_u_cl_1_2_7          ngma — grammar: "Gender I (u-: CL. 1/2)"
%   gender_i_u_cl_1_2_8          ngoo — grammar: "Gender I (u-: CL. 1/2)"
%   gender_iii_n_i_cl_5_6_9      nyiin — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_i_u_cl_1_2_9          nàchīpúàn — grammar: "Gender I (u-: CL. 1/2)"
%   gender_i_u_cl_1_2_10         pii — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_10 puu — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_iii_n_i_cl_5_6_10     puu-l — grammar: "Gender III (n-/i-: CL. 5/6)"
%   gender_i_u_cl_1_2_11         sachu — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_11 sandee — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_12 ti — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_i_u_cl_1_2_12         tiikpii — grammar: "Gender I (u-: CL. 1/2)"
%   gender_i_u_cl_1_2_13         waa — grammar: "Gender I (u-: CL. 1/2)"
%   gender_ii_tiib_mam_cl_3_4_13 walbaa — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_14 wujoo — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%   gender_ii_tiib_mam_cl_3_4_15 yaabii-l — grammar: "Gender II (Ø-/-tiib/-mam: CL. 3/4)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
