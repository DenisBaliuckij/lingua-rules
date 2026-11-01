% rules/crk/nouns.lp
% Cree (Plains) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 109577: Plains Cree: A Grammatical Study (1973), pages 30, 32, 36
%   doc 389937: Plains Cree morphosyntax (1986), pages 26
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   inanimate_noun               maskisin — grammar: "inanimate noun"
%   inanimate_dependent_noun     teh — grammar: "inanimate dependent noun"
%   animate_noun                 kitem — grammar: "animate noun"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
