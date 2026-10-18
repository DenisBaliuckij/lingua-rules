% rules/ewo/verbs.lp
% Ewondo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 794202: Die Sprache der Jaunde in Kamerun (1905), pages 15, 25, 26, 54, 62
%   doc 845701: Petite grammaire Ewondo avec exercices appropriés, suivie d'un petit manuel de conversatio (1950), pages 10, 11, 14, 25, 31, 32, 68
%   doc 845702: A Descriptive Grammar of Ewondo (1979), pages 77, 85, 101, 107, 120, 121, 127, 128, 140, 143, 144, 145, 146, 149
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kad_type                     kad
%   indefinite_future            tobo — grammar: "Indefinite Future"
%   fidi_type                    fidi
%   bu_type                      bù
%   hodiernate_past_imperfect_contracted_for mabadzaa — grammar: "Hodiernate Past Imperfect: Contracted Form 1"
%   hodiernate_past_subsecutive_habitual médzda — grammar: "Hodiernate Past Subsecutive Habitual"
%   high_toned_bisyllabic_stems  ale — grammar: "High-Toned Bisyllabic Stems"
%   high_tone_syllabic_stems     azo — grammar: "High-Tone syllabic Stems"
%   bdman_type                   bdman
%   low_toned_bisyllabic_stems   beda — grammar: "Low-Toned Bisyllabic Stems"
%   low_toned_monosyllabic_stems bid — grammar: "Low-Toned Monosyllabic Stems"
%   bimi_type                    bimi
%   low_toned_monosyllabic_stems_2 bod — grammar: "Low-Toned Monosyllabic Stems"
%   high_toned_bisyllabic_stems_2 bugi — grammar: "High-Toned Bisyllabic Stems"
%   high_toned_bisyllabic_stems_3 digi — grammar: "High-Toned Bisyllabic Stems"
%   low_toned_bisyllabic_stems_2 dii — grammar: "Low-Toned Bisyllabic Stems"
%   high_toned_bisyllabic_stems_4 dimi — grammar: "High-Toned Bisyllabic Stems"
%   du_type                      du
%   dudu_type                    dudu
%   dzoa_type                    dzoa
%   imperativ_der_einsilbigen_verben hook — grammar: "Imperativ der einsilbigen Verben"
%   kkilan_type                  kKilan
%   low_toned_bisyllabic_stems_3 kada — grammar: "Low-Toned Bisyllabic Stems"
%   high_toned_bisyllabic_stems_5 kala — grammar: "High-Toned Bisyllabic Stems"
%   low_toned_monosyllabic_stems_3 kel — grammar: "Low-Toned Monosyllabic Stems"
%   low_toned_bisyllabic_stems_4 kele — grammar: "Low-Toned Bisyllabic Stems"
%   koan_type                    koan
%   high_toned_bisyllabic_stems_6 kobo — grammar: "High-Toned Bisyllabic Stems"
%   low_toned_monosyllabic_stems_4 kod — grammar: "Low-Toned Monosyllabic Stems"
%   imperativ_der_einsilbigen_verben_2 koek — grammar: "Imperativ der einsilbigen Verben"
%   kogelan_type                 kogelan
%   kogolo_type                  kogolo
%   low_toned_bisyllabic_stems_5 kole — grammar: "Low-Toned Bisyllabic Stems"
%   high_toned_bisyllabic_stems_7 kuli — grammar: "High-Toned Bisyllabic Stems"
%   low_toned_monosyllabic_stems_5 kus — grammar: "Low-Toned Monosyllabic Stems"
%   imperativ_der_einsilbigen_verben_3 ladäk — grammar: "Imperativ der einsilbigen Verben"
%   high_toned_bisyllabic_stems_8 ligi — grammar: "High-Toned Bisyllabic Stems"
%   linan_type                   linan
%   low_toned_monosyllabic_stems_6 lod — grammar: "Low-Toned Monosyllabic Stems"
%   imperativ_der_einsilbigen_verben_4 lodbk — grammar: "Imperativ der einsilbigen Verben"
%   low_toned_bisyllabic_stems_6 lugu — grammar: "Low-Toned Bisyllabic Stems"
%   luman_type                   luman
%   lunebu_type                  lunebu
%   lumbu_type                   lümbu
%   madi_type                    madi
%   ndaman_type                  ndaman
%   imperativ_der_einsilbigen_verben_5 nonbn — grammar: "Imperativ der einsilbigen Verben"
%   poan_type                    poan
%   high_toned_bisyllabic_stems_9 sili — grammar: "High-Toned Bisyllabic Stems"
%   low_toned_monosyllabic_stems_7 sug — grammar: "Low-Toned Monosyllabic Stems"
%   imperativ_der_einsilbigen_verben_6 suuk — grammar: "Imperativ der einsilbigen Verben"
%   low_toned_monosyllabic_stems_8 ta — grammar: "Low-Toned Monosyllabic Stems"
%   high_toned_bisyllabic_stems_10 tala — grammar: "High-Toned Bisyllabic Stems"
%   imperativ_der_einsilbigen_verben_7 taäk — grammar: "Imperativ der einsilbigen Verben"
%   high_tone_syllabic_stems_2   tsag — grammar: "High-Tone syllabic Stems"
%   tsidan_type                  tsidan
%   tub_type                     tub
%   ugi_type                     ugi
%   low_toned_bisyllabic_stems_7 vac — grammar: "Low-Toned Bisyllabic Stems"
%   woa_type                     woa
%   woe_type                     woe
%   low_toned_bisyllabic_stems_8 wulu — grammar: "Low-Toned Bisyllabic Stems"
%   woe_type_2                   wöe
%   imperativ_der_einsilbigen_verben_8 ySnen — grammar: "Imperativ der einsilbigen Verben"
%   yaan_type                    yaan
%   low_toned_bisyllabic_stems_9 yae — grammar: "Low-Toned Bisyllabic Stems"
%   yegela_type                  yegela
%   low_toned_monosyllabic_stems_9 yid — grammar: "Low-Toned Monosyllabic Stems"
%   mi_type                      ßmi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
