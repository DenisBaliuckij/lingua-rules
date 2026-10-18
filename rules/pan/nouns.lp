% rules/pan/nouns.lp
% Punjabi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 848942: A Grammar of the Punjabee Language (1812), pages 38, 63, 77, 83, 93, 94, 95, 96, 97, 98
%   doc 920739: A Start in Panjabi (1963), pages 89, 96, 114, 134
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   feminine                     kuri — grammar: "feminine"
%   masculine_ii                 tObi — grammar: "masculine II"
%   masculine_i                  munda — grammar: "masculine I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
