% rules/wpc/verbs.lp
% Mako verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 77109: The Mako language: Vitality, Grammar and Classification (2015), pages 192, 328, 331
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   em_type                      em-ɨ, iʧ-ɨ, omukʷat-ɨ
%   me_type                      me
%   class_i                      iʧ — grammar: "Class I"
%   class_ii                     ˀdo — grammar: "Class II"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
