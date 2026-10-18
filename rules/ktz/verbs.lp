% rules/ktz/verbs.lp
% Juǀ'hoan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296341: A Concise Grammar of Juǀ'hoan with a Juǀ'hoan-English glossary and a subject index (2005), pages 24, 27, 31, 32, 33, 34, 62, 87
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): cú, gù, gǃáí, nǂhao, nǃáng, nǃún, tsáú, ǃhún, ǃáí, ǃò’á
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
