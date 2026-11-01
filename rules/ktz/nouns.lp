% rules/ktz/nouns.lp
% Juǀ'hoan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296341: A Concise Grammar of Juǀ'hoan with a Juǀ'hoan-English glossary and a subject index (2005), pages 24, 27, 31, 32, 33, 34, 62, 87
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ba_type                      bá
%   gaq_type                     gǁàq
%   ghuinma_type                 gǂhúínmà
%   taqe_type                    taqè
%   tju_type                     tjù
%   uto_type                     útò
%   xanu_type                    ǂxanù
%   xoma_type                    ǃxómà
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
