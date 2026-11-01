% rules/ava/verbs.lp
% Avar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16823: Avar Grammar Sketch (2018), pages 5, 6, 7, 8, 9, 10, 17
%   doc 67186: Versuch über das Awarische (1862), pages 20, 21
%   doc 388224: Аварский язык (Avar Language) (1997), pages 53, 54
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   cal_ize_type                 c’al-ize
%   w_ac_ine_type                w-ač’-ine
%   a_ze_type                    ɬa-ze
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
