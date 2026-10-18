% rules/lkt/verbs.lp
% Lakota verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389708: Reading and Writing the Lakota Language (1998), pages 22, 36, 37, 43, 49, 55, 56, 58, 65, 99, 107, 133, 139, 154, 155, 164, 169, 170, 171, 175, 177, 178, 179
%   doc 389711: Sketch of Lakhota, a Siouan Language, Pt. I (1996), pages 58, 60, 61, 62, 65, 71, 72, 114, 117, 118, 127, 128
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ahi_type                     ahi
%   icu_type                     iču
%   pazo_type                    pazo
%   iye_ya_type                  iye'yA
%   yuha_type                    yuha
%   paradigm_i_regular           hi — grammar: "Paradigm I (regular)"
%   wapiye_type                  wapiye
%   gender_endings               wate — grammar: "gender endings"
%   yusta_type                   yuštaŋ
%   prefix_type                  haŋ'skA — grammar: "prefix type"
%   mixed_type                   aphA — grammar: "mixed type"
%   prefix_type_2                khi'ze — grammar: "prefix type"
%   paradigm_i_regular_2         slolyA — grammar: "Paradigm I (regular)"
%   ti_type                      ti
%   mixed_type_2                 uŋspe — grammar: "mixed type"
%   waste_type                   waste
%   paradigm_2_y_stem            waŋyaŋ'kA — grammar: "Paradigm 2 (y-stem)"
%   ya_type                      yA
%   paradigm_1                   ?uŋ — grammar: "Paradigm 1"
%   blu_type                     blu
%   ciq_type                     ciq
%   echa_u_type                  ečha'?uŋ
%   infix_type                   i'-puza — grammar: "infix type"
%   loci_type                    loċi
%   ma_type                      ma
%   paradigm_3_nasal_stem        uŋ — grammar: "Paradigm 3 (nasal stem)"
%   wa_verbs                     wa — grammar: "wa verbs"
%   yaka_type                    yaŋkA
% Irregular (listed in data/verbs.exceptions.tsv): ble, eyA, yu'tA
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
