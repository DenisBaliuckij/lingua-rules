% rules/ofs/verbs.lp
% Old Frisian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388730: An Introduction to Old Frisian: History, Grammar, Reader, Glossary (2009), pages 67, 68, 69, 72, 73, 74, 75, 76, 77, 78, 84, 85, 88, 89, 97, 98
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_verbs_class_1           dēla — grammar: "Weak verbs Class 1"
%   weak_verbs_class_2           makia — grammar: "Weak verbs class 2"
%   class_vi                     fara — grammar: "Class VI"
%   habba_type                   habba
%   hebba_type                   hebba
%   class_v                      ieva — grammar: "Class V"
%   class_vi_a                   draga — grammar: "Class VI a."
%   class_vi_a_2                 grava — grammar: "Class VI a."
%   class_iv                     nima — grammar: "Class IV"
%   class_v_a                    lesa — grammar: "Class V a."
% Irregular (listed in data/verbs.exceptions.tsv): binda, biāda, grῑpa, helpa, iowa, lidza, rῑda, skriuwa, stela, wesa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
