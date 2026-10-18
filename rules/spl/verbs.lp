% rules/spl/verbs.lp
% Selepet verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289445: A Grammar of the Selepet Language (1968), pages 236, 257, 258, 459, 460
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   remote_past_tense_rpt        ari — grammar: "remote past tense (rpt.)"
%   rpt_1_went_a_long_time_ago_etc ka — grammar: "rpt. 1 went a long time ago, etc."
%   rpt_i_went_a_long_tin1c_agoj_etc kA — grammar: "rpt. I went a long tin1c agoj etc."
%   hetero_1_hold_it_and_someone_else_etc me — grammar: "hetero. 1 hold it and someone else .•. , etc."
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
