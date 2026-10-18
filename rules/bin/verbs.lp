% rules/bin/verbs.lp
% Bini verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 64820: Bininj Gun-wok: a pan-dialectal grammar of Mayali, Kunwinjku and Kune (2003), pages 365, 389
%   doc 847311: A Bini Grammar, Part 3: Lexemics (1963), pages 77, 78, 130, 153
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   thematic_nje                 kinje — grammar: "thematic -nje"
%   conjugation_3_ka_na_11       warlkka — grammar: "conjugation 3 (ka, na, 11')"
%   conjugation_2_ke_we          baye — grammar: "conjugation 2 (-ke, we)"
%   conjugation_4b               bu — grammar: "conjugation 4b"
%   conjugation_5a_du_ru_iu_dju_do du — grammar: "conjugation 5a (du, ru, -Iu, -dju, do)"
%   conjugation_1_me             karrme — grammar: "conjugation 1 (-me)"
%   conjugation_5c               ma — grammar: "conjugation 5c"
%   conjugation_6a_da            da — grammar: "conjugation 6a (da)"
%   conjugation_7a_di_rri_ni     di, ni — grammar: "conjugation 7a (di, -rri, ni)"
%   conjugation_11_men           warremen — grammar: "conjugation 11 (-men)"
%   conjugation_6b_da            wayda — grammar: "conjugation 6b (-da)"
%   conjugation_7_yi_ndi_persistive wokdi — grammar: "conjugation 7 (-(yi)ndi 'persistive')"
%   conjugation_10_rre_reflex_recip burre — grammar: "conjugation 10 (-rre 'reflex/recip')"
%   conjugation_9_re             re — grammar: "conjugation 9 (re)"
%   conjugation_8_yo             yo — grammar: "conjugation 8 (yo)"
%   thematic_me                  bame — grammar: "thematic -me"
%   thematic_wo                  bawo, wo — grammar: "thematic wo"
%   thematic_ru                  karu, ru — grammar: "thematic ru"
%   thematic_lu                  kolu — grammar: "thematic -lu"
%   thematic_we                  kowe, we — grammar: "thematic we"
%   thematic_na                  na, widna — grammar: "thematic na"
% Irregular (listed in data/verbs.exceptions.tsv): dowe, ngu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
