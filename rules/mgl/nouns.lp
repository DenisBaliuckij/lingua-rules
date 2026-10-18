% rules/mgl/nouns.lp
% Maleu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289617: A Maleu grammar outline and text (1996), pages 5, 6, 8, 9, 14
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   obligatorily_possessed_nouns_suffix kuri — grammar: "obligatorily possessed nouns (suffix)"
%   obligatorily_possessed_nouns_non_intimat sasa — grammar: "obligatorily possessed nouns (non-intimate prefix)"
%   obligatorily_possessed_nouns_suffix_2 tivu — grammar: "obligatorily possessed nouns (suffix)"
%   poki_a_type                  poki-a
% Irregular (listed in data/nouns.exceptions.tsv): liu- + lia
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
