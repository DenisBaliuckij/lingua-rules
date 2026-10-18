% rules/mka/nouns.lp
% Pere nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25133: A grammar of Pere (Bere, Mbre) of Côte d’Ivoire (2019), pages 69, 70, 72, 73, 87, 97, 99, 100, 107
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   no_extra_syllable_in_absolute_singular flá, fóróⁿ, jéé, tɔ́ⁿ ... — grammar: "no extra syllable in absolute singular"
%   with_extra_wa_in_absolute_singular sɔ̀w — grammar: "with extra -wā- in absolute singular"
%   with_g_in_absolute_singular  bàw, kàw — grammar: "with g in absolute singular"
%   with_g_in_absolute_singular_2 díí, gbáw, gbéw, sɛ́w ... — grammar: "with g in absolute singular"
%   with_g_in_absolute_singular_3 gbàw — grammar: "with g in absolute singular"
%   with_g_in_absolute_singular_4 gbèè — grammar: "with g in absolute singular"
%   with_in_absolute_singular    gbòⁿ — grammar: "with ŋ in absolute singular"
%   with_in_absolute_singular_2  gbɔ́wⁿ, wóóⁿ — grammar: "with ŋ in absolute singular"
%   pseudo_biisyllabic_with_medial_r gbə́rɛ́w — grammar: "(pseudo-)biisyllabic with medial r"
%   no_extra_syllable_in_absolute_singular_2 lɔ́ⁿ — grammar: "no extra syllable in absolute singular"
%   g_also_optionally_in_plural  sét — grammar: "g also optionally in plural"
%   with_g_in_absolute_singular_5 sìw — grammar: "with g in absolute singular"
%   also_optional_in_plural      tààⁿ — grammar: "ŋ also optional in plural"
%   with_g_in_absolute_singular_6 tēē — grammar: "with g in absolute singular"
%   with_g_in_absolute_singular_7 yèw — grammar: "with g in absolute singular"
%   with_g_in_absolute_singular_8 yɛ̀w — grammar: "with g in absolute singular"
%   optional_reduction_from_bisyllabic ʃéŋ — grammar: "optional reduction from bisyllabic"
%   baakr_type                   báákɔ̀rɔ̀
%   baalg_type                   báálɔ́gɔ́
%   with_g_in_absolute_singular_9 bɛ̀w — grammar: "with g in absolute singular"
%   compounds_with_final_tumu    gbàŋgà-túmú — grammar: "compounds with final -túmú"
%   compounds_with_final_jii_jisi_place jìʃí — grammar: "Compounds with final -jìʃí ~ -jìsí ‘place’"
%   compounds_with_final_tumu_2  jòmù-túmú — grammar: "compounds with final -túmú"
%   compounds_with_final_kee_fruit_or_seed kéé — grammar: "Compounds with final -kéé ‘fruit’ or ‘seed’"
%   koo_type                     kóò
%   compounds_with_final_k_owner kɔ̀ — grammar: "Compounds with final -kɔ̀ ‘owner’"
%   maa_type                     máà
%   with_in_absolute_singular_3  nàwⁿ — grammar: "with ŋ in absolute singular"
%   nagbe_type                   náŋgbè
%   with_in_absolute_singular_4  pɔ́ɔⁿ̀ — grammar: "with ŋ in absolute singular"
%   siy_type                     síyɛ̀
%   to_type                      tó
%   compounds_with_final_tumu_3  tōgō-mɛ̀-túmú — grammar: "compounds with final -túmú"
%   tgbe_type                    tɔ́gbè
%   compounds_with_final_tumu_4  ʃíyêŋ-túmú — grammar: "compounds with final -túmú"
% Irregular (listed in data/nouns.exceptions.tsv): bábá, bòbò, dɛ́ŋgɔ̀, dɛ́ɛ, fráŋgbɔ́, gbɔ̀gɔ̀lɔ́, námù, nùùⁿ, páá, píyé, sɔ̀gɔ̀, tíyé ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
