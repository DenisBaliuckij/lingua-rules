% rules/akk/verbs.lp
% Akkadian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93127: A Grammar of Akkadian (2011), pages 95, 196, 224, 247, 293, 295, 364, 398, 399, 400, 401, 416, 430, 431, 432, 450, 463, 476, 490, 500, 658, 659, 660, 690
%   doc 818163: The Akkadian Verb and Its Semitic Background (2010), pages 156, 201, 203, 205, 325, 332, 336, 379, 440, 512, 565
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   n_stem_au                    paråsum — grammar: "N stem (a–u)"
%   verbs_iiiweak                malûm — grammar: "Verbs III–weak"
%   n_stem_i                     nadånum — grammar: "N stem (i)"
%   n_stem_a                     kalûm — grammar: "N stem (a)"
%   verbs_iiiweak_2              banûm — grammar: "Verbs III–weak"
%   naparruru_n                  naparruru — grammar: "naparruru N"
%   suffix_conjugation           parsā — grammar: "suffix conjugation"
%   n_stem                       izuzzu — grammar: "N-stem"
%   quadriradical_verbs_of_the_nabalkutu_gro nabalkutu — grammar: "quadriradical verbs of the nabalkutu group"
%   stative                      šalmu — grammar: "stative"
%   alakum_type                  alåkum
%   i_and_iiiweak_i              elûm — grammar: "I– and III–weak (i)"
%   iw_verbs_tn_stem             abbulum — grammar: "I–w verbs tn stem"
%   ia_verbs_tn_stem             a⇥⇥uzum — grammar: "I–a verbs tn stem"
%   n_stem_verbs_i               enûm — grammar: "N Stem: Verbs I–"
%   iw_verbs_tn_stem_2           eßßûm — grammar: "I–w verbs tn stem"
%   ie_verbs_tn_stem             e⇤⇤urum — grammar: "I–e verbs tn stem"
%   verbs_iweak_ia               i–a — grammar: "Verbs I–weak (I–a)"
%   verbs_iweak_ie               i–e — grammar: "Verbs I–weak (I–e)"
%   verbs_iweak_iw               i–w — grammar: "Verbs I–weak (I–w)"
%   kanum_type                   kânum
%   verbs_iiiweak_3              leqûm — grammar: "Verbs III–weak"
%   quadriradical_verbs_n_stem_iv_u naparkûm — grammar: "Quadriradical Verbs N Stem IV-u"
%   quadriradical_verbs_of_the_nabalkutu_gro_2 neʾellû — grammar: "quadriradical verbs of the nabalkutu group"
%   verbs_iw                     tabbûm — grammar: "Verbs I–w"
%   iiiweak                      tabnûm — grammar: "III–weak"
%   iiiweak_2                    tandunum — grammar: "III–weak"
%   in                           taprusum — grammar: "I–n"
%   iw_and_iiiweak_i             waßûm — grammar: "I–w and III–weak (i)"
%   the_verb_with_accusative_direct_object_s ßßur — grammar: "The Verb with Accusative (Direct Object) Suffixes"
%   quadriradical_verbs_stem     ⇥ubalkutum — grammar: "Quadriradical Verbs ! Stem"
%   quadriradical_verbs_stem_iv_u ⇥uparkûm — grammar: "Quadriradical Verbs ! Stem IV-u"
%   i_a                          amāru — grammar: "I/a"
%   i_e                          ezēbu — grammar: "I/e"
%   gt                           gt — grammar: "Gt"
%   quadriradical_verbs_n_stem   nabalkutum — grammar: "Quadriradical Verbs N Stem"
%   n_stem_verbs_in_i_class      naddunum — grammar: "N Stem; Verbs I–n; i class"
%   quadriradical_verbs_of_the_nabalkutu_gro_3 naparšudu — grammar: "quadriradical verbs of the nabalkutu group (I/i)"
%   n_stem_verbs_in_au_a_or_u_class naqqurum — grammar: "N Stem; Verbs I–n; a–u, a, or u class"
%   stative_2                    šalim — grammar: "stative"
%   gt_stem                      atwûm — grammar: "Gt-stem"
%   n_stem_verbs_iiiweak_i_class nabnûm — grammar: "N Stem; Verbs III–weak; i class"
%   n_stem_verbs_iiiweak_a_class naklûm — grammar: "N Stem; Verbs III–weak; a class"
%   n_stem_verbs_iiiweak_u_class namnûm — grammar: "N Stem; Verbs III–weak; u class"
%   quadriradical_verbs_of_the_nabalkutu_gro_4 naparkû — grammar: "quadriradical verbs of the nabalkutu group (U/u)"
%   n_stem_sound_verbs_i_class   napqudum — grammar: "N Stem; Sound Verbs; i class"
%   n_stem_sound_verbs_au_class  naprusum — grammar: "N Stem; Sound Verbs; a–u class"
%   n_stem_sound_verbs_a_class   naßbutum — grammar: "N Stem; Sound Verbs; a class"
%   gt_stem_ia                   at⇥uzum — grammar: "Gt stem (I–a)"
%   gt_stem_ie_iiiweak           etlûm — grammar: "Gt stem (I–e, III–weak)"
%   in_and_iiiweak_i             nadûm — grammar: "I–n and III–weak (i)"
%   g_stem_imperative            limad, piqid — grammar: "G-stem imperative"
%   iw_and_iiiweak_a_i           nawårum — grammar: "I–w and III–weak (a-i)"
%   in_and_iiiweak_e             nesûm — grammar: "I–n and III–weak (e)"
%   gt_stem_sound_verbs          pitrusum — grammar: "Gt stem (Sound Verbs)"
%   g_stem_imperative_2          ṣabat — grammar: "G-stem imperative"
%   n_stem_verbs_iw              babålum — grammar: "N Stem: Verbs I–w"
%   i_a_2                        tana⇥az — grammar: "I– a"
%   i_e_2                        tenpe⇤ — grammar: "I– e"
% Irregular (listed in data/verbs.exceptions.tsv): alāku, atlukum
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
