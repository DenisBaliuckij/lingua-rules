% rules/epo/verbs.lp
% Esperanto verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25523: A Complete Grammar of Esperanto the International Language (1910), pages 34, 210, 232
%   doc 289760: The Grammar of Esperanto: A Corpus-based Description (1998), pages 104
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   vidi_type                    vidi, esti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
