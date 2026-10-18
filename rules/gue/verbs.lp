% rules/gue/verbs.lp
% Gurindji verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 99971: A Grammar of Gurindji (2021), pages 84, 519, 524, 526, 550, 643, 644, 654, 660, 661, 664, 795
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_4                      yanana, marnana — grammar: "Class 4"
%   class_2                      kamparnana — grammar: "Class 2 – Ø"
%   class_1_rr                   yuwanana — grammar: "Class 1 – rr"
%   class_3_ng                   kangana — grammar: "Class 3 – ng"
%   class_1_rr_2                 waninyu — grammar: "Class 1 (rr)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
