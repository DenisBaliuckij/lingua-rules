% rules/occ/verbs.lp
% Occidental verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 814899: Occidental Course in 10 Lessons (English translation) (2019), pages 6, 10, 11, 12
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   es_type                      es, have
%   amar_type                    amar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
