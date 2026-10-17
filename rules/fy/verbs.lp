% rules/fy/verbs.lp
% West Frisian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 101493: Opdelt sproglære til kursus i frisisk (n.d.), pages 9, 10, 11, 12, 16, 17, 18, 19, 20, 21, 22, 24, 26, 27, 31, 32, 35, 36
%   doc 101499: Groeiende grammatica bij de cursus Fries (n.d.), pages 5, 9, 10, 11, 12, 14, 16, 19, 20, 21, 22, 24, 25, 30, 32
%   doc 388247: Frisian (1995), pages 11, 13
%   doc 388249: Phonology and grammar of modern west Frisian, with phonetic texts and glossary (1913), pages 83, 84, 85, 86, 87
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_ii                     harkje — grammar: "Class II"
%   class_i                      meane — grammar: "Class I"
%   swije_type                   swije, krije
%   jam_type                     jam
%   loeije_type                  loeije, ploeije, toaije
%   pliigje_type                 pliigje
%   ploaitsje_type               ploaitsje, loaitsje
%   leare_type                   leare
%   class_iv_a                   breMe — grammar: "Class IV a"
%   class_vi_a                   drage — grammar: "Class VI a"
%   class_vii_b                  fange — grammar: "Class VII b"
%   class_vi_a_2                 grave — grammar: "Class VI a"
%   class_vii_a                  litte — grammar: "Class VII a"
%   class_vii_b_2                roppe — grammar: "Class VII b"
%   class_v_a                    sitte — grammar: "Class V a"
%   class_vi_a_3                 slaen — grammar: "Class VI a"
%   class_vi_c                   waekse — grammar: "Class VI c"
%   class_vi_e                   falle — grammar: "Class VI e"
%   class_vi_b                   farre — grammar: "Class VI b"
%   class_v_a_2                  leze — grammar: "Class V a"
%   class_iv_b                   nimme — grammar: "Class IV b"
%   class_vi_a_4                 weage — grammar: "Class VI a"
%   class_v_a_3                  frette — grammar: "Class V a"
%   class_vii_a_2                hjitte — grammar: "Class VII a"
%   lykje_type                   lykje
%   class_v_a_4                  stelle — grammar: "Class V a"
% Irregular (listed in data/verbs.exceptions.tsv): bergje, bidde, bidjerre, biede, bine, binne, blike, bliuwe, duke, fleane, forjitte, forlieze ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
