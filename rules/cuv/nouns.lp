% rules/cuv/nouns.lp
% Cuvok nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 30: Grammaire cuvok : une langue tchadique centrale du Cameroun (2021), pages 173, 273
%   doc 68449: Grammaire cuvok: une langue tchadique centrale du Cameroun (2021), pages 174, 274
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   cat_2                        də̀m — grammar: "CAT 2"
%   cat_2_2                      ŋgwáz — grammar: "CAT 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
