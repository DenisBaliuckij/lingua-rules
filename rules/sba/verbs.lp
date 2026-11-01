% rules/sba/verbs.lp
% Ngambay verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296434: A Brief Grammatical Sketch of Ngambay (2010), pages 6, 7, 9, 12, 13
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   isi_type                     i˥si˧
%   ila_type                     i˧la˧
%   class_1                      nõ˧ — grammar: "Class 1"
%   class_4b                     la˧ — grammar: "Class 4B"
%   class_5a                     u˥la˧ — grammar: "Class 5A"
%   class_5b                     u˥ru˧ — grammar: "Class 5B"
%   class_4b_2                   u˧nda˧ — grammar: "Class 4B"
%   class_1_2                    tɔl˥ — grammar: "Class 1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
