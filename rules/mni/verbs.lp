% rules/mni/verbs.lp
% Manipuri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 85168: A Grammar of Meithei (1997), pages 105, 108
%   doc 289573: Notes on Manipuri Grammar (1875), pages 5, 6, 7, 8
%   doc 389318: A Study of Manipuri Grammar (1992), pages 106, 113, 325, 393
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   chatpa_type                  chatpa
%   ca_type                      ca
%   turn_type                    turn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
