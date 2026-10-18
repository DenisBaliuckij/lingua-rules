% rules/duj/verbs.lp
% Dhuwal verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 793556: Dhuwal (Arnhem Land) Texts on Kinship and Other Subjects with Grammatical Sketch and Dicti (1984), pages 16, 33, 45, 46
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_3                      nSupa — grammar: "Class 3"
%   class_2                      nhi:na — grammar: "Class 2"
%   class_1b                     wandi — grammar: "Class 1B"
%   class_1a                     marci — grammar: "Class 1A"
% Irregular (listed in data/verbs.exceptions.tsv): gana
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
