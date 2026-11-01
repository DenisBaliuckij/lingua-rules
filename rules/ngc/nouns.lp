% rules/ngc/nouns.lp
% Bobo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296365: A Sketch of the Phonology and Morphology of Bobo (Upper Volta) (1976), pages 99, 100, 154, 170, 171, 177, 178, 193, 194, 195
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   biero_type                   biero
%   da_type                      da
%   da_la_type                   da-la
%   dogo_type                    dogo
%   dugure_type                  dugure
%   fu_type                      fu
%   fugunu_type                  fugunu
%   ku_type                      kU
%   ka_type                      ka
%   kiele_type                   kiele
%   kpare_type                   kpare
%   kpi_type                     kpi
%   kt_type                      kt?
%   ku_type_2                    ku
%   lu_type                      lu
%   ma_type                      ma
%   na_type                      na
%   naga_type                    naga
%   nlni_type                    nlni
%   nxnl_type                    nxnl
%   pu_type                      pU
%   pa_type                      pa
%   pe_type                      pe
%   pege_type                    pege
%   pu_type_2                    pu
%   si_type                      si
%   sogo_type                    sogo
%   sr_type                      sr
%   tege_nge_type                tege-n§ge
%   u_type                       u
%   uu_type                      uu
%   vu_type                      vu
%   y_type                       y?
%   ya_type                      ya
%   ye_type                      ye
%   zogo_type                    zogo
%   zszuma_type                  zszuma
%   zugu_type                    zugu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
