% rules/ang/verbs.lp
% Old English verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388494: A Grammar of Old English: Volume 1: Phonology (2011), pages 391, 395, 419, 439, 467, 504, 529, 591, 657, 662, 679, 691, 697
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_class_ii                smbaþan — grammar: "weak class II"
%   class_ii                     lofian — grammar: "class II"
%   bcdan_type                   bcdan
%   willan_type                  willan
%   class_3                      þearf — grammar: "Class 3"
%   class_3_2                    cann — grammar: "Class 3"
%   class_3_3                    ann — grammar: "Class 3"
% Irregular (listed in data/verbs.exceptions.tsv): dón
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
