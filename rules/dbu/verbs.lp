% rules/dbu/verbs.lp
% Najamba Dogon verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296242: A Grammar of Najamba Dogon (= Bondu-So) (2009), pages 81, 89, 99, 100, 104, 105, 107, 108, 109, 111, 140, 240, 246, 256, 350
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   y_type                       yɛ́
%   tombo_type                   to̱mbò
%   defective_stative_verbs_and_quasi_verbs bò — grammar: "defective stative verbs and quasi-verbs"
%   ginagi_type                  gìnágí
%   defective_stative_verbs_and_quasi_verbs_2 jà — grammar: "defective stative verbs and quasi-verbs"
%   je_type                      jê
%   kw_type                      kwɛ́
%   defective_stative_verbs_and_quasi_verbs_3 kíyò — grammar: "defective stative verbs and quasi-verbs"
%   mamili_y_type                màmílí-yɛ́
%   n_type                       nɛ́
%   defective_stative_verbs_and_quasi_verbs_4 tígà — grammar: "defective stative verbs and quasi-verbs"
%   tuguj_type                   túgújɛ́
%   defective_stative_verbs_and_quasi_verbs_5 òbò — grammar: "defective stative verbs and quasi-verbs"
% Irregular (listed in data/verbs.exceptions.tsv): jógò
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
