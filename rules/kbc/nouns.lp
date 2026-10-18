% rules/kbc/nouns.lp
% Kadiwéu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389255: Aspectos Da Língua Kadiwéu (1976), pages 26, 73, 89
%   doc 389256: A Grammar of Kadiweu (1997), pages 99
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   sub_classe_1a                eºiadi — grammar: "sub-classe 1a"
%   sub_classe_1a_2              niwocodi — grammar: "sub-classe 1a"
%   sub_classe_1a_3              noledi — grammar: "sub-classe 1a"
%   sub_classe_1a_4              ºodamodi — grammar: "sub-classe 1a"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
