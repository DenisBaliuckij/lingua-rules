% rules/eus/nouns.lp
% Basque nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 45517: A Grammar of Basque (2003), pages 208, 237, 239, 245, 246, 247, 249, 250, 254, 260, 261, 262, 263, 265, 267, 269, 270, 273
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bilbo_type                   Bilbo
%   eibar_type                   Eibar
%   irun_type                    Irun
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
