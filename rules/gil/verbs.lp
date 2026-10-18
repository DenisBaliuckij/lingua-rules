% rules/gil/verbs.lp
% Kiribati (Gilbertese) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 898091: Kiribati (Gilbertese): Grammar Handbook (1979), pages 145, 150, 157, 159, 170, 175, 191, 197, 204
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   set_1_verbs_with_nasal_stems b'ain-a — grammar: "set 1 verbs with nasal stems"
%   set_1_verbs_with_nasal_stems_2 kanim'-a, kunea, tuang-a — grammar: "set 1 verbs with nasal stems"
%   noora_type                   noora
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
