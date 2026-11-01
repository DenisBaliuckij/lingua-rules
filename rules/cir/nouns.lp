% rules/cir/nouns.lp
% Tinrin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289623: A Grammar of Tinrin (New Caledonia) (1990), pages 123
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   words_prefixed_by_ke_a_and_au kudei — grammar: "Words Prefixed by ke-, a- and au-"
%   words_prefixed_by_ke_a_and_au_2 pwerre, pwogarra, sapone — grammar: "Words Prefixed by ke-, a- and au-"
%   words_prefixed_by_ke_a_and_au_3 warrabü — grammar: "Words Prefixed by ke-, a- and au-"
%   words_prefixed_by_ke_a_and_au_4 amürrü — grammar: "Words Prefixed by ke-, a- and au-"
%   words_prefixed_by_ke_a_and_au_5 kagho — grammar: "Words Prefixed by ke-, a- and au-"
%   words_prefixed_by_ke_a_and_au_6 tro-treanrii — grammar: "Words Prefixed by ke-, a- and au-"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
