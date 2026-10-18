% rules/wym/adjectives.lp
% Wymysorys adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11: A Grammar of Wymysorys (2016), pages 28, 29, 31, 32, 33, 34, 35, 36, 39, 40, 43, 79, 80, 81, 82, 83, 85, 86, 87, 91, 95, 96, 99, 106
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   class_2                      dułer — grammar: "Class 2"
%   class_3                      güter — grammar: "Class 3"
%   class_6                      güty — grammar: "Class 6"
%   class_3_2                    kośer — grammar: "Class 3"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
