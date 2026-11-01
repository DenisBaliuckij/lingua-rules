% rules/aoi/verbs.lp
% Enindhilyakwa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15536: Enindhilyakwa phonology, morphosyntax and genetic position (2012), pages 105, 230, 231, 234, 371, 374, 377, 380, 382, 384, 408
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   conjugation_3_ja_rnv_nv_verb_stems_endin lhvka — grammar: "Conjugation 3: -ja, -rnv ~ -nv (verb stems ending in /a/)"
%   conjugation_4_na_verb_stems_ending_in_a maka — grammar: "Conjugation 4: -na, -Ø (verb stems ending in /a/)"
%   conjugation_5_na_wa_causative_suffix yakwabi-ji — grammar: "Conjugation 5: -na, -wa (causative suffix)"
%   conjugation_6b               ambarr — grammar: "Conjugation 6B"
%   conjugation_6c               andhiya — grammar: "Conjugation 6C"
%   conjugation_6c_2             arjiya — grammar: "Conjugation 6C"
%   c1b_ii_a                     akvma — grammar: "1B(ii-a)"
%   c2b                          aya — grammar: "2B"
%   enindhilyakwa_6a             mungkulha — grammar: "Enindhilyakwa 6A"
%   enindhilyakwa_3              walka — grammar: "Enindhilyakwa 3"
%   c1a_i                        +bi — grammar: "1A(i)"
%   c6c                          arji — grammar: "6C"
%   enindhilyakwa_4              ma — grammar: "Enindhilyakwa 4"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
