% rules/kky/verbs.lp
% Guugu Yimidhirr verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 69360: Handbook of Australian Languages, Volume 1: Guugu Yimidhirr (1979), pages 84, 88, 99, 116, 393
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   na_conj                      maa — grammar: "NA conj."
%   ma_conj                      nhaa — grammar: "MA conj."
%   na_conj_2                    wu — grammar: "NA conj."
%   v_conj                       dhada — grammar: "V conj."
%   l_conj                       gunda — grammar: "L conj."
%   r_conj                       ngalbu — grammar: "R conj."
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
