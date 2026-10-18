% rules/afb/adjectives.lp
% Emirati Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44421: Emirati Arabic: A Comprehensive Grammar (2024), pages 72, 73, 110, 183
%   doc 44425: A Short Reference Grammar of Gulf Arabic (n.d.), pages 34, 36, 40, 41, 43, 44, 59, 60, 63, 64, 72, 85, 86, 87
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ardum_type                   ardum\
%   asli_type                    asli
%   fa9laawiyya                  baHreeni — grammar: "fa9laawiyya"
%   baagi_type                   baagi
%   baariz_type                  baariz
%   barbaraawi_type              barbaraawi
%   bayyin_type                  bayyin
%   fa9laawiyya_2                calbaawi — grammar: "fa9laawiyya"
%   daass_type                   daass
%   dalmaawi_type                dalmaawi
%   gaali_type                   gaali
%   gasiir_type                  gasiir
%   gatam_type                   gatam
%   hadi_type                    hadi
%   hamar_type                   hamar
%   hayyin_type                  hayyin
%   kw_eeti_type                 kw'eeti
%   fa9laawiyya_3                leewaawi — grammar: "fa9laawiyya"
%   maasi_type                   maasi
%   mafaa9iil                    maynuun — grammar: "mafaa9iil"
%   mfannis_type                 mfannis
%   mfassil_type                 mfassil
%   mitwannis_type               mitwannis
%   mixt_type                    mixt
%   mreewis_type                 mreewis
%   msaxxan_type                 msaxxan
%   mtarris_type                 mtarris
%   murr_type                    murr
%   mwaafij_type                 mwaafij
%   qawi_type                    qawi
%   raagid_type                  raagid
%   sixi_type                    sixi
%   ta_wiil_type                 ta'wiil
%   taaris_type                  taaris
%   xadar_type                   xadar
%   xaras_type                   xaras
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
