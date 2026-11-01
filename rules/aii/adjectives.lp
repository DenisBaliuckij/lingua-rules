% rules/aii/adjectives.lp
% Assyrian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388144: Exposé des éléments de la grammaire assyrienne (1868), pages 64, 71, 72, 73, 83, 121, 122, 125, 127, 128, 162, 163, 173, 178, 188, 199, 204, 213, 218
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bat_type                     bat
%   bu_type                      bu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
