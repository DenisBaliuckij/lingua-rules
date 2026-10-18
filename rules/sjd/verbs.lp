% rules/sjd/verbs.lp
% Kildin Sami verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388178: Краткий грамматический очерк саамского языка (1985), pages 14, 16, 17, 21, 22, 31, 34, 35, 36
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   iii                          āввтлэ — grammar: "III спряжение"
%   iii_2                        лыгкнэ — grammar: "III спряжение"
%   i                            огкнушшэ — grammar: "I спряжение"
%   ii                           āммьсэссьтэ — grammar: "II спряжение"
%   ii_2                         нӣськэ — grammar: "II спряжение"
%   ii_3                         āммьсассьтэ, нēсськэ — grammar: "II спряжение"
%   iii_3                        кырьйхэ — grammar: "III"
%   ii_3_2                       сāррнэ — grammar: "II, 3"
%   i_2                          ēлле — grammar: "I спряжение"
%   class_type                   лӣйе
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
