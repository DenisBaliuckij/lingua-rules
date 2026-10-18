% rules/lwo/nouns.lp
% Luwo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296415: A Grammar of Luwo: An anthropological approach (2014), pages 89, 90, 113, 114, 115, 116, 117, 121, 122, 151, 161, 230
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   bw_type                      bwɔ́ŋ
%   dg_type                      dɔ́gɔ́
%   krc_type                     kʌrɛ̀c
%   luwo_type                    lúwò
%   baya_type                    báyá
%   bdh_type                     bɔɔdhɛ̀
%   blanda_type                  bɛ́ɛ́làndà
%   plurals_with                 cwɪ́ɲ — grammar: "Plurals with -ɛ́"
%   plurals_with_vn              cúl — grammar: "Plurals with -VNɛ́"
%   animals_and_body_parts_with_k dhɔ̀k — grammar: "Animals and body parts with *-k"
%   plurals_with_vn_2            dɛɛl — grammar: "Plurals with -VNɛ́"
%   animals_and_body_parts_with_k_2 dɪ̀tɪ́k — grammar: "Animals and body parts with *-k"
%   plurals_with_k               dɪ́ɛĺ — grammar: "Plurals with ‑kʌ̀"
%   plurals_with_2               gwàŋ — grammar: "Plurals with -ɛ́"
%   animals_and_body_parts_with_k_3 gwɔ́k — grammar: "Animals and body parts with *-k"
%   plurals_with_th              gɛ̀ɛw — grammar: "Plurals with -th"
%   jaa_type                     jáŋà
%   jk_type                      jɔ́k
%   plurals_with_vn_3            kwác — grammar: "Plurals with -VNɛ́"
%   plurals_with_v_front_breathy kán — grammar: "Plurals with -V[- FRONT, + BREATHY]-ɛ"
%   animals_and_body_parts_with_k_4 kùdùrúk — grammar: "Animals and body parts with *-k"
%   plurals_with_th_2            kɔ́nnɔ́ — grammar: "Plurals with -th"
%   animals_and_body_parts_with_k_5 lwák — grammar: "Animals and body parts with *-k"
%   plurals_with_3               líbʌ̀rà — grammar: "Plurals with -ɛ́"
%   lum_type                     lúm
%   plurals_with_4               lɛ́ɛ́p — grammar: "Plurals with -ɛ́"
%   l_type                       lɪ́ɲ
%   plurals_with_5               múr — grammar: "Plurals with -ɪ̀"
%   plurals_with_vn_4            páár — grammar: "Plurals with -VNɛ́"
%   animals_and_body_parts_with_k_6 rúòk — grammar: "Animals and body parts with *-k"
%   singulative_marking          rɛ́y-ɔ̀ — grammar: "singulative marking"
%   singulative_marking_2        rɪ̀ŋ-ɔ̀ — grammar: "singulative marking"
%   thudhaanh_type               thudhàành
%   plurals_with_v_front_breathy_2 thúón — grammar: "Plurals with -V[- FRONT, + BREATHY]-ɛ"
%   tnak_type                    tʌ́nàk
%   plurals_with_th_3            yáy — grammar: "Plurals with -th"
%   plurals_with_th_4            yór — grammar: "Plurals with -th"
%   plurals_with_th_5            yɪ́c — grammar: "Plurals with -th"
%   plurals_with_vn_5            àpwɔ́yɔ́ — grammar: "Plurals with -VNɛ́"
%   plurals_with_vn_6            ùgwaal — grammar: "Plurals with -VNɛ́"
%   plurals_with_6               ùthwɔ́nh — grammar: "Plurals with -ɛ́"
%   animals_and_body_parts_with_k_7 ùtɔk — grammar: "Animals and body parts with *-k"
%   ubuk_type                    úbúk
%   animals_and_body_parts_with_k_8 úpùk — grammar: "Animals and body parts with *-k"
%   plurals_with_th_6            ŋác — grammar: "Plurals with -th"
%   plurals_with_k_2             ŋʊʊ — grammar: "Plurals with ‑kʌ̀"
%   plurals_with_vn_7            ʌʌm — grammar: "Plurals with -VNɛ́"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
