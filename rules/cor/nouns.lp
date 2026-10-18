% rules/cor/nouns.lp
% Cornish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389744: Kernewek dre Lyther: Summary of Lessons for Grade 1 and Grades 2/3 (n.d.), pages 24, 35, 52, 78, 90, 95, 96, 110, 114, 115, 119, 124, 128, 131, 135, 139, 144, 148, 151, 158
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   collective_nouns             favenn, hasenn, lilienn, rosenn — grammar: "collective nouns"
%   collective_nouns_2           losowenn — grammar: "collective nouns"
%   kernow_type                  Kernow
%   collective_nouns_3           avanenn — grammar: "collective nouns"
%   chi_type                     chi
%   den_type                     den
%   diwotti_type                 diwotti
%   dyskador_type                dyskador
%   esel_type                    esel
%   flogh_type                   flogh
%   fos_type                     fos
%   gorthyp_type                 gorthyp
%   gwerthji_type                gwerthji
%   gwreg_type                   gwreg
%   collective_nouns_4           gwydhenn — grammar: "collective nouns"
%   karr_tan_type                karr-tan
%   kesskrifer_type              kesskrifer
%   kok_type                     kok
%   koweth_type                  koweth
%   kowethas_type                kowethas
%   lyther_type                  lyther
%   lyver_type                   lyver
%   mab_type                     mab
%   mis_type                     mis
%   myrgh_type                   myrgh
%   ober_type                    ober
%   pennskol_type                pennskol
%   pyskador_type                pyskador
%   rann_type                    rann
%   skol_type                    skol
%   collective_nouns_5           skyllenn — grammar: "collective nouns"
%   soedhva_type                 soedhva
%   studhyer_type                studhyer
%   teylu_type                   teylu
%   trigva_type                  trigva
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
