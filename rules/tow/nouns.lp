% rules/tow/nouns.lp
% Jemez Towa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388724: A Phonology and Morphology of Jemez Towa (1998), pages 115, 211, 243
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_iv                     ?Q-?e — grammar: "Class IV"
%   class_m                      bela — grammar: "Class m"
%   class_i                      pa? — grammar: "Class I"
%   class_ii                     pq-s — grammar: "Class II"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
