% rules/pli/verbs.lp
% Pali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 54928: Kaccāyana Pāli Vyākaraṇaṁ: Kaccāyana Pāli Grammar, Volume 2 (2016), pages 315, 611, 617, 621, 635
%   doc 54946: Kaccāyana Pāli Vyākaraṇaṁ: Kaccāyana Pāli Grammar. Volume 1. The Complete Text (2016), pages 414, 415
%   doc 912048: Grammar and Dictionary of The Pali Language (1998), pages 665
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   hiyyattani_vibhatti_imperfect gam — grammar: "Hiyyattanī Vibhatti (Imperfect)"
%   parokkha_vibhatti_past_perfect jā — grammar: "Parokkhā Vibhatti (Past Perfect)"
%   pacati_type                  pacati
%   causative_verb_2nd_affix_naya pācayati — grammar: "Causative Verb (2nd Affix: ṇaya)"
%   causative_verb_1st_affix_ne  pāceti — grammar: "Causative Verb (1st Affix: ṇe)"
%   causative_verb_3rd_affix_nape pācāpeti — grammar: "Causative Verb (3rd Affix: ṇāpe)"
%   causative_verbs_in_singular  bhaṇa — grammar: "Causative verbs in singular"
%   deseti_type                  deseti
%   causative_verbs_in_singular_2 paca — grammar: "Causative verbs in singular"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
