% rules/tcy/nouns.lp
% Tulu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389691: A Grammar of the Tulu Language (1872), pages 20, 22, 30, 33, 38
%   doc 389692: A Grammar of Tulu (A Dravidian Language) (1971), pages 93, 523, 528, 529
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   personal_noun                kartave — grammar: "Personal noun"
%   kudikerlu_type               kudikerlu, tarelu
%   mara_type                    mara
%   impersonal_nouns             bele — grammar: "Impersonal nouns"
%   pravadi_type                 pravadi, appe
%   personal_noun_2              amma — grammar: "Personal noun"
%   mage_type                    mage
%   malpunavu_type               malpunavu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
