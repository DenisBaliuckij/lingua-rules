% rules/dtu/nouns.lp
% Tebul Ure (Dogon) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289390: A Grammar of Tebul Ure (Dogon, Mali) (2015), pages 49, 69, 99, 175, 177, 178, 195, 201, 202
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kin_terms_and_similar_relationship_terms bá — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_2 dèré — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_3 gá — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_4 kùmbó — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_5 lèdú — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_6 nàrⁿá — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb nǎ — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_7 pàpá — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_2 péddè — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_8 sàrⁿá — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_9 sá — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_3 sòmé — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_10 té — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_11 tòjjé — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_12 tɔ́gɔ̀rɔ̀ — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_13 tɛ̀rɛ́ — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_4 yà-kúmè — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   animate_nouns_with_plural_mbo_mb_5 zàmdílè — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   animate_nouns_with_plural_mbo_mb_6 zònjě — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_14 zú — grammar: "kin terms and similar relationship terms"
%   kin_terms_and_similar_relationship_terms_15 zɛ̀ŋgɛ́ — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_7 àbɛ́ — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   animate_nouns_with_plural_mbo_mb_8 àdé — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_16 àngé — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_9 àsɛ̀gɛ́ — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   animate_nouns_with_plural_mbo_mb_10 ìnjɛ̌ — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   animate_nouns_with_plural_mbo_mb_11 írⁿè — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_17 ǹdó — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_12 ɔ̀gɔ̀ɲɔ̀ŋɔ́ — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%   kin_terms_and_similar_relationship_terms_18 ɔ̀ngɔ́ — grammar: "kin terms and similar relationship terms"
%   animate_nouns_with_plural_mbo_mb_13 ɛ̀dɛ̀-làlé — grammar: "Animate nouns with plural -mbò ~ -mbɔ̀"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
