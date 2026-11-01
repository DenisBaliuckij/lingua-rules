% rules/bbo/verbs.lp
% Bobo (Tansila dialect) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296364: Essai de description grammaticale du dialecte Bobo de Tansila (1983), pages 36, 58, 59
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   troisieme_conjugaison_mb_ylu yըlù — grammar: "Troisième conjugaison : MB yըlù"
%   deuxieme_conjugaison_bm_nyim nyìm̚ — grammar: "Deuxième conjugaison BM nyìm̚"
%   quatrieme_conjugaison_bb_tugo_piler_tire dȪۨraۨ — grammar: "Quatrième conjugaison : BB tùgò piler, tìrè parler"
%   premiere_conjugaison_mm_type_km k̚m̚ — grammar: "Première conjugaison MM type k̚m̚"
%   quatrieme_conjugaison_bb_tugo_piler_tire_2 tìrè — grammar: "Quatrième conjugaison : BB tùgò piler, tìrè parler"
%   troisieme_conjugaison_mb_ylu_sauter_tgo tըgò — grammar: "Troisième conjugaison : MB yըlù sauter, tըgò semer"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
