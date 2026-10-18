% rules/alq/nouns.lp
% Algonquin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389145: Grammaire de la langue algonquine (1890), pages 6, 7, 16, 26, 29, 31, 32, 35, 93
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vocative_plural_formation    nidjanis — grammar: "vocative plural formation"
%   animate_nouns_ending_in_h    tckiweh — grammar: "animate nouns ending in h"
%   inanimate_nouns_ending_in_a_e_o abwi — grammar: "inanimate nouns ending in a, e, o"
%   animate_nouns_ending_in_a_e_o acage — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_j_b_p akawanj — grammar: "animate nouns ending in j, b, p"
%   animate_nouns_ending_in_g_k_z akik — grammar: "animate nouns ending in g, k, z"
%   vocative_plural_formation_2  amik — grammar: "vocative plural formation"
%   animate_nouns_ending_in_a_e_o_2 amo — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_g_k_z_2 anan^ — grammar: "animate nouns ending in g, k, z"
%   animate_nouns_ending_in_h_2  angweh — grammar: "animate nouns ending in h"
%   animate_nouns_ending_in_j_b_p_2 anib — grammar: "animate nouns ending in j, b, p"
%   vocative_plural_formation_3  anjeni — grammar: "vocative plural formation"
%   inanimate_nouns_ending_in_a_e_o_2 anwi — grammar: "inanimate nouns ending in a, e, o"
%   inanimate_nouns_ending_in_j_b_p apanj — grammar: "inanimate nouns ending in j, b, p"
%   animate_nouns_ending_in_j_b_p_3 asap — grammar: "animate nouns ending in j, b, p"
%   animate_nouns_ending_in_a_e_o_3 atcitamo — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_g_k_z_3 avaboz — grammar: "animate nouns ending in g, k, z"
%   inanimate_nouns_ending_in_g_k_z bak — grammar: "inanimate nouns ending in g, k, z"
%   animate_nouns_ending_in_j_b_p_4 cingop — grammar: "animate nouns ending in j, b, p"
%   animate_nouns_ending_in_j_b_p_5 ckanj — grammar: "animate nouns ending in j, b, p"
%   inanimate_nouns_ending_in_g_k_z_2 ckinjik — grammar: "inanimate nouns ending in g, k, z"
%   inanimate_nouns_ending_in_a_e_o_3 conia — grammar: "inanimate nouns ending in a, e, o"
%   animate_nouns_ending_in_g_k_z_4 eebik — grammar: "animate nouns ending in g, k, z"
%   animate_nouns_ending_in_h_3  ikiwenzih — grammar: "animate nouns ending in h"
%   vocative_plural_formation_4  kanis — grammar: "vocative plural formation"
%   inanimate_nouns_ending_in_g_k_z_3 kijik — grammar: "inanimate nouns ending in g, k, z"
%   animate_nouns_ending_in_c_m_n_s_t_w kikons — grammar: "animate nouns ending in c, m, n, s, t, w"
%   animate_nouns_ending_in_g_k_z_5 kinebik — grammar: "animate nouns ending in g, k, z"
%   animate_nouns_ending_in_c_m_n_s_t_w_2 mabingan — grammar: "animate nouns ending in c, m, n, s, t, w"
%   inanimate_nouns_ending_in_g_k_z_4 makak — grammar: "inanimate nouns ending in g, k, z"
%   animate_nouns_ending_in_a_e_o_4 makwa — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_a_e_o_5 meme — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_h_4  mindimonhieh — grammar: "animate nouns ending in h"
%   vocative_plural_formation_5  misamek — grammar: "vocative plural formation"
%   inanimate_nouns_ending_in_j_b_p_2 miskweiap — grammar: "inanimate nouns ending in j, b, p"
%   inanimate_nouns_ending_in_j_b_p_3 mitikwab — grammar: "inanimate nouns ending in j, b, p"
%   inanimate_nouns_ending_in_a_e_o_4 mocwe — grammar: "inanimate nouns ending in a, e, o"
%   animate_nouns_ending_in_g_k_z_6 monz — grammar: "animate nouns ending in g, k, z"
%   inanimate_nouns_ending_in_j_b_p_4 nakweiab — grammar: "inanimate nouns ending in j, b, p"
%   nidjanisinab_type            nidjanisinab
%   inanimate_nouns_ending_in_h  nikweih — grammar: "inanimate nouns ending in h"
%   inanimate_nouns_ending_in_j_b_p_5 nindj — grammar: "inanimate nouns ending in j, b, p"
%   inanimate_nouns_ending_in_h_2 oboteih — grammar: "inanimate nouns ending in h"
%   vocative_plural_formation_6  ockinawe — grammar: "vocative plural formation"
%   animate_nouns_ending_in_a_e_o_6 odji — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_c_m_n_s_t_w_3 ojim — grammar: "animate nouns ending in c, m, n, s, t, w"
%   animate_nouns_ending_in_a_e_o_7 okima — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_a_e_o_8 omimi — grammar: "animate nouns ending in a, e, o"
%   animate_nouns_ending_in_c_m_n_s_t_w_4 piciw — grammar: "animate nouns ending in c, m, n, s, t, w"
%   inanimate_nouns_ending_in_a_e_o_5 pimite — grammar: "inanimate nouns ending in a, e, o"
%   inanimate_nouns_ending_in_h_3 piwaih — grammar: "inanimate nouns ending in h"
%   inanimate_nouns_ending_in_a_e_o_6 sahi — grammar: "inanimate nouns ending in a, e, o"
%   inanimate_nouns_ending_in_a_e_o_7 sipi — grammar: "inanimate nouns ending in a, e, o"
%   tenik_type                   tenik
%   animate_nouns_ending_in_c_m_n_s_t_w_5 wabirain — grammar: "animate nouns ending in c, m, n, s, t, w"
%   animate_nouns_ending_in_c_m_n_s_t_w_6 wagoc — grammar: "animate nouns ending in c, m, n, s, t, w"
%   inanimate_nouns_ending_in_a_e_o_8 wato — grammar: "inanimate nouns ending in a, e, o"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
