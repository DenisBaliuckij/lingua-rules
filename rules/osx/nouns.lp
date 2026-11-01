% rules/osx/nouns.lp
% Old Saxon nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 927871: Altsächsische Grammatik (1875), pages 211, 225
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   a_deklination                dag — grammar: "a-deklination"
%   a_deklination_2              word — grammar: "a-deklination"
%   i_deklination_langsilbige_maskulina wurm — grammar: "i-deklination. Langsilbige. Maskulina."
%   a_deklination_3              graf — grammar: "a-deklination"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
