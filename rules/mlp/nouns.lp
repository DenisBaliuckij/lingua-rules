% rules/mlp/nouns.lp
% Bargam nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389508: Bargam Grammar Sketch (2006), pages 28, 29, 31, 32, 72
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   abayniz_type                 abayniz
%   ahiyan_type                  ahiyan
%   amigniz_type                 amigniz
%   alienably_possessed_nouns    aw — grammar: "alienably possessed nouns"
%   awegniz_type                 awegniz
%   alienably_possessed_nouns_2  mat — grammar: "alienably possessed nouns"
%   mataw_type                   mataw
%   on_type                      on
%   onmin_type                   onmin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
