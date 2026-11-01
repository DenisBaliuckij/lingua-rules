% rules/ket/nouns.lp
% Ket nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23474: A Descriptive Grammar of Ket (Yenisei-Ostyak): Part 1: Introduction, Phonology, Morphology (2007), pages 96, 99, 106, 166, 167, 178, 198, 199, 201, 204, 321
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine_noun               h–k — grammar: "masculine noun"
%   anim_m_f_nouns_ending_in_n   q–m — grammar: "[+anim] (m, f) nouns ending in -n"
%   stems_in_l                   bájbul — grammar: "stems in -l"
%   anim_m_f_nouns_ending_in_n_2 báln — grammar: "[+anim] (m, f) nouns ending in -n"
%   stems_in_l_2                 bátl — grammar: "stems in -l"
%   anim_m_f_nouns_ending_in_n_3 b⁄´stin — grammar: "[+anim] (m, f) nouns ending in -n"
%   anim_m_f_nouns_ending_in_n_4 b™´tn — grammar: "[+anim] (m, f) nouns ending in -n"
%   btmn_type                    b™¿n
%   anim_m_f_nouns_ending_in_n_5 d'´sen — grammar: "[+anim] (m, f) nouns ending in -n"
%   di_type                      di¿
%   dadij_type                   dádij
%   stems_in_l_3                 dó — grammar: "stems in -l"
%   anim                         d™´sol — grammar: "[-anim]"
%   ha_type                      há
%   i_type                       i¿
%   il_type                      i¿l
%   in_type                      i¿n
%   is_type                      i¿s
%   ks_type                      kŒs
%   ktm_la_type                  k™´la
%   anim_m_f_nouns_ending_in_n_6 l!n — grammar: "[+anim] (m, f) nouns ending in -n"
%   anim_2                       qo¿ — grammar: "[-anim]"
%   anim_m_f_nouns_ending_in_n_7 qƒn — grammar: "[+anim] (m, f) nouns ending in -n"
%   q_t_type                     q˜t
%   qtmn_type                    q™¿n
%   s_type                       s
%   s_j_type                     s!j
%   anim_3                       tìd — grammar: "[-anim]"
%   stems_in_l_4                 tótal — grammar: "stems in -l"
%   anim_m_f_nouns_ending_in_n_8 túln — grammar: "[+anim] (m, f) nouns ending in -n"
%   td_type                      tŒd
%   stems_in_l_5                 t˜l — grammar: "stems in -l"
%   t_t_type                     t˜t
%   tb_type                      t–b
%   anim_m_f_nouns_ending_in_n_9 ájkon — grammar: "[+anim] (m, f) nouns ending in -n"
%   stems_in_l_6                 álal — grammar: "stems in -l"
%   stems_in_l_7                 állal — grammar: "stems in -l"
%   ulbej_type                   úlbej
%   anim_m_f_nouns_ending_in_n_10 úlen — grammar: "[+anim] (m, f) nouns ending in -n"
%   stems_in_l_8                 úlol — grammar: "stems in -l"
%   tm_mas_type                  ™´mas
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
