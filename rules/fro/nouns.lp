% rules/fro/nouns.lp
% Old French nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389372: Old French: A Concise Handbook (1974), pages 29, 49, 51, 65, 73, 74, 77, 168, 173
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_iii                    her — grammar: "Class III"
%   class_ii                     loi — grammar: "Class II"
%   class_i                      murs — grammar: "Class I"
%   class_iii_2                  none — grammar: "Class III"
%   class_ii_2                   pere — grammar: "Class II"
%   class_i_2                    rose — grammar: "Class I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
