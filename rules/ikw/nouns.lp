% rules/ikw/nouns.lp
% Ik nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 49679: A grammar of Ik (Icé-tód): Northeast Uganda’s last thriving Kuliak language (2014), pages 85, 126, 215, 275, 286, 331, 366, 475, 477, 721, 722
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   daku_type                    dakú
%   ra_type                      ŋʊrá
%   kwar_type                    kwar
%   kwt_type                     kwɛt
%   agentives_with_a_deverbal_n1 asínítoni-ama — grammar: "agentives with a deverbal N1"
%   bakutsa_type                 bakutsᵃˊ
%   agentives_with_an_intransitive_adjectiva baroni-ama — grammar: "agentives with an intransitive/adjectival deverbal N1"
%   bos_type                     bos
%   agentives_with_an_intransitive_adjectiva_2 botibotosí-áma — grammar: "agentives with an intransitive/adjectival deverbal N1"
%   agentives_with_an_intransitive_adjectiva_3 buɗámóni-ama — grammar: "agentives with an intransitive/adjectival deverbal N1"
%   biba_type                    bíbᵃ
%   agentives_with_a_nominal_n1  cooká-ama — grammar: "agentives with a nominal N1"
%   curuka_type                  cúrúkᵃ
%   c_type                       cɛŋˊ
%   dzoa_type                    dzóɡᵃ
%   agentives_with_a_nominal_n1_2 dzú-áma — grammar: "agentives with a nominal N1"
%   agentives_with_a_nominal_n1_3 dɛá-áma — grammar: "agentives with a nominal N1"
%   agentives_with_a_deverbal_n1_2 iwóróni-ama — grammar: "agentives with a deverbal N1"
%   kaf_type                     kaf
%   kopa_type                    kopᵃ
%   kuca_type                    kucᵃ
%   kwan_type                    kwanˊ
%   kia_type                     kíʝᵃ
%   lewe_type                    leweɲ
%   swa_type                     sɛwᵃ
%   agentives_with_a_deverbal_n1_3 túbesi-ama — grammar: "agentives with a deverbal N1"
%   agentives_with_a_nominal_n1_4 tɔkɔba-ama — grammar: "agentives with a nominal N1"
%   agentives_with_an_intransitive_adjectiva_4 zeoni-ama — grammar: "agentives with an intransitive/adjectival deverbal N1"
%   eda_type                     édᵃ
%   agentives_with_a_nominal_n1_5 ƙaƙa-ama — grammar: "agentives with a nominal N1"
%   waz_type                     ƙwaz
%   tsa_type                     ƙʊtsʼᵃˊ
%   agentives_with_an_intransitive_adjectiva_5 ɓetsʼoni-ama — grammar: "agentives with an intransitive/adjectival deverbal N1"
%   ia_type                      ɓiɓᵃ
%   agentives_with_a_deverbal_n1_4 ɓúƙóni-ama — grammar: "agentives with a deverbal N1"
%   ia_type_2                    ɗiɗᵃ
%   ra_type_2                    ɗɛrɛ́ƙᵃ
%   agentives_with_a_nominal_n1_6 ɛ́sá-ama — grammar: "agentives with a nominal N1"
%   ur_type                      ɡúr
%   ol_type                      ɲól
%   m_type                       ʝʊmˊ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
