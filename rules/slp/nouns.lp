% rules/slp/nouns.lp
% Lamaholot nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93549: The Lamaholot Language of Eastern Indonesia (2011), pages 186
%   doc 290020: A Grammar of Solor – Lamaholot: A Language of Flores, Eastern Indonesia (2016), pages 81, 83, 100, 148, 344, 347, 362
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inalienably_possessed_noun   limak — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_2 lotor — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_3 korē — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_4 kote — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_5 kowã — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_6 weki — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_7 wewã — grammar: "inalienably possessed noun"
%   inalienably_possessed_noun_8 wéwél — grammar: "inalienably possessed noun"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
