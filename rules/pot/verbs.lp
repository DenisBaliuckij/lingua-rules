% rules/pot/verbs.lp
% Potawatomi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9874: How the Potawatomi Language Lives: A Grammar of Potawatomi (2017), pages 71, 73, 100, 118, 134, 135, 136, 147, 148, 149, 152, 153, 154, 156, 157, 158, 161, 164, 169, 172, 174, 176
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   vti2                         nbyédon — grammar: "VTI2"
%   vti1                         nwabdan — grammar: "VTI1"
%   vti1_2                       wabdeman — grammar: "VTI1"
%   ai                           majin — grammar: "AI"
%   ai_2                         nénem — grammar: "AI"
%   ta_preterit                  wabm — grammar: "TA preterit"
%   ta_negatives                 gwabmesnon — grammar: "TA negatives"
%   ta_negatives_2               gwabmesnonem — grammar: "TA negatives"
%   vti2_dubitative              byédon-an — grammar: "VTI2 dubitative"
%   ta_independent_indicative    waba — grammar: "TA independent indicative"
%   dubitative_ta                wabaadek — grammar: "dubitative TA"
%   vti1_dubitative              wabd-an — grammar: "VTI1 dubitative"
%   conjunct_ta                  wabmenan — grammar: "conjunct TA"
%   animate_intransitive_participle giwsé — grammar: "animate intransitive participle"
%   vta_imperatives              wabem — grammar: "VTA Imperatives"
%   n_stem                       waben — grammar: "N stem"
%   v_stem                       wawyéya — grammar: "V stem"
%   augment_stem                 wawyéyamget — grammar: "Augment stem"
%   d_stem                       wenet — grammar: "D stem"
%   vti3                         nmijen — grammar: "VTI3"
%   v_stem_n                     akwakwdé — grammar: "V stem (N)"
%   v_stem_d                     biwa — grammar: "V stem (D)"
%   v_stem_n_2                   bonwéwé — grammar: "V stem (N)"
%   d_stem_2                     byédanmet — grammar: "D stem"
%   n_stem_2                     dgwesen — grammar: "N stem"
%   v_stem_n_d                   gachnewa — grammar: "V stem (N/D)"
%   v_stem_n_3                   gizhdé — grammar: "V stem (N)"
%   augment_stem_2               gizhdémget — grammar: "Augment stem"
%   inanimate_intransitive_participle gtegadé — grammar: "inanimate intransitive participle"
%   v_stem_d_2                   mané — grammar: "V stem (D)"
%   v_stem_d_3                   mbigwéwé — grammar: "V stem (D)"
%   v_stem_n_d_2                 mskwa — grammar: "V stem (N/D)"
%   v_stem_n_d_3                 nadé — grammar: "V stem (N/D)"
%   v_stem_n_4                   tkagme — grammar: "V stem (N)"
% Irregular (listed in data/verbs.exceptions.tsv): bidé, byé, dem stem, shwéksen
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
