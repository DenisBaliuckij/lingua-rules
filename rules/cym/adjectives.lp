% rules/cym/adjectives.lp
% Welsh adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389200: A Welsh Grammar (1980), pages 17, 22, 24, 25, 26, 34, 36, 37, 38, 56, 88, 89, 96, 97, 98, 99, 100, 101, 109, 111, 112, 113, 114, 115, 116, 168
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bychan_type                  bychan
%   truan_type                   truan
%   balch_type                   balch
%   blin_type                    blin
%   blith_type                   blith
%   blwng_type                   blwng
%   blwydd_type                  blwydd
%   brwnt_type                   brwnt
%   brych_type                   brych
%   buan_type                    buan
%   byddar_type                  byddar
%   byr_type                     byr
%   caeth_type                   caeth
%   cain_type                    cain
%   claerwyn_type                claerwyn
%   crwm_type                    crwm
%   crwn_type                    crwn
%   cryf_type                    cryf
%   cryg_type                    cryg
%   cwta_type                    cwta
%   cyfan_type                   cyfan
%   cyfoed_type                  cyfoed
%   cyfoethog_type               cyfoethog
%   cyfrin_type                  cyfrin
%   dall_type                    dall
%   dirgel_type                  dirgel
%   doeth_type                   doeth
%   dwfn_type                    dwfn
%   ffyrf_type                   ffyrf
%   garw_type                    garw
%   gwan_type                    gwan
%   gwlyb_type                   gwlyb
%   gwymp_type                   gwymp
%   gwyn_type                    gwyn
%   gwyrdd_type                  gwyrdd
%   hardd_type                   hardd
%   hir_type                     hir
%   hyll_type                    hyll
%   hysb_type                    hysb
%   ieuanc_type                  ieuanc
%   llwfr_type                   llwfr
%   llwm_type                    llwm
%   llwyd_type                   llwyd
%   llydan_type                  llydan
%   llym_type                    llym
%   marw_type                    marw
%   mawr_type                    mawr
%   melyn_type                   melyn
%   pendwll_type                 pendwll
%   swrth_type                   swrth
%   sych_type                    sych
%   syml_type                    syml
%   syth_type                    syth
%   tlawd_type                   tlawd
%   tlws_type                    tlws
%   trwm_type                    trwm
%   trwsgl_type                  trwsgl
%   twn_type                     twn
%   uchel_type                   uchel
%   ysgafn_type                  ysgafn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
