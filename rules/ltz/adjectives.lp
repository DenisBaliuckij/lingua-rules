% rules/ltz/adjectives.lp
% Luxembourgish adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389748: Petite Grammaire Luxembourgeoise (1996), pages 16, 30, 32, 33, 34, 35, 36, 38, 40, 41, 43, 52, 53, 54, 59, 72
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   leschten_type                leschten, drëtten, éischten
%   zweten_type                  zweten
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
