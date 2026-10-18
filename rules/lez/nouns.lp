% rules/lez/nouns.lp
% Lezgian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388327: A Grammar of Lezgian (1993), pages 24, 25, 73, 80, 81, 94, 100, 126, 156, 180, 198
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hul_type                     hül
%   dida_type                    didä
%   k_an_type                    k'an
%   luw_type                     luw
%   q_el_type                    q'el
%   qaw_type                     qaw
%   sew_type                     sew
%   farid_type                   Farid
%   qul_type                     qül
%   zin_type                     zin
%   wi_suffix_nouns              axcehwi — grammar: "-wi suffix nouns"
%   gab_type                     gab
%   gad_type                     gad
%   jab_type                     jab
%   jak_ar_type                  jak'-ar
%   jeb_type                     jeb
%   kek_type                     kek
%   kukwar_type                  kukwar
%   kwakwar_type                 kwakwar
%   met_er_type                  met'-er
%   murk_ar_type                 murk'ar
%   nek_er_type                  nek'-er
%   net_er_type                  net'er
%   nik_er_type                  nik'er
%   pab_type                     pab
%   pagw_type                    pagw
%   q_ep_ini_type                q'ep'ini
%   qab_type                     qab
%   qag_type                     qag
%   rab_type                     rab
%   rak_ar_type                  rak'ar
%   rat_ar_type                  rat'ar
%   rib_type                     rib
%   sal_type                     sal
%   seb_type                     seb
%   t_ap_uni_type                t'ap'uni
%   tab_type                     tab
%   wak_ar_type                  wak'ar
%   wik_er_type                  wik'er
%   wirt_er_type                 wirt'er
%   xeb_type                     xeb
%   xel_type                     xel
%   xer_type                     xer
%   xwexwer_type                 xwexwer
%   in_type                      £in
%   el_type                      ±el
%   oeb_type                     öeb
% Irregular (listed in data/nouns.exceptions.tsv): c'aj, dert, fif, fu, jad, jis, jug, sas, xwa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
