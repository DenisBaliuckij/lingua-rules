% rules/lwo/verbs.lp
% Luwo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296415: A Grammar of Luwo: An anthropological approach (2014), pages 89, 90, 113, 114, 115, 116, 117, 121, 122, 151, 161, 230
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   myel_type                    myél
%   rm_type                      rɔ́ɔ̀m
%   tugo_type                    túgò
%   yii_type                     yii
%   ut_type                      ŋút
%   er_type                      ɲer
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
