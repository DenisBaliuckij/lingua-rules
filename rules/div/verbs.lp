% rules/div/verbs.lp
% Dhivehi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28913: The Dhivehi Language: A Descriptive and Historical Grammar of Maldivian and Its Dialects (2002), pages 109, 110, 111, 117, 214, 215, 244, 262
%   doc 920743: Dhivehi: The Language of the Maldives (2017), pages 84, 114, 164, 166, 167, 169, 171, 173, 174, 175, 178, 179, 188, 191, 349, 350, 351, 353, 354, 355, 357, 358, 359
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   n_stem                       hunnanī — grammar: "n-stem"
%   e_stem_active                kuḷenī — grammar: "e-stem, active"
%   n_stem_2                     annanī — grammar: "n-stem"
%   a_stems                      le — grammar: "a-stems"
%   n_stem_postural              onnanī — grammar: "n-stem, postural"
%   e_stem                       feṣenī — grammar: "e-stem"
%   a_stem                       hadanī, hadama — grammar: "a-stem"
%   n_stem_postural_2            innanī — grammar: "n-stem, postural"
%   a_stems_2                    balu — grammar: "a-stems"
%   e_stems                      fene, teme — grammar: "e-stems"
%   n_stems                      irı̄ndu — grammar: "n-stems"
%   n_stem_in_verb               fennanī — grammar: "n-stem, IN-verb"
%   e_stems_2                    hisu — grammar: "e-stems"
%   monosyllabic                 denī — grammar: "monosyllabic"
%   n_stem_3                     gannanī — grammar: "n-stem"
%   e_stem_2                     kuḷema — grammar: "e-stem"
%   n_stem_4                     gennanī — grammar: "n-stem"
%   preterite_iv                 nimenı̄ — grammar: "preterite IV"
%   n_stem_verbs                 vannanī — grammar: "n-stem verbs"
%   e_stem_verbs                 dekenī — grammar: "e-stem verbs"
%   monosyllabic_stem_verbs      lanī — grammar: "monosyllabic-stem verbs"
%   e_stem_3                     feṣema — grammar: "e-stem"
%   n_stem_5                     nukunnanī — grammar: "n-stem"
%   e_stem_4                     temenı̄ — grammar: "e-stem"
%   e_stem_existential           uḷenī — grammar: "e-stem, existential"
%   n_stem_6                     vannanı̄ — grammar: "n-stem"
%   a_stem_2                     balanı̄ — grammar: "a-stem"
%   monosyllabic_stem_verbs_2    danī — grammar: "monosyllabic-stem verbs"
% Irregular (listed in data/verbs.exceptions.tsv): aisf, huref, in̆ de, koṣ̊, kuranī, liyanī, ove, vanī, vejja
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
