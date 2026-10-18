% rules/xcl/nouns.lp
% Kilikisch-Armenisch nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388855: A Grammatical Sketch of Classical Armenian (2009), pages 16, 17, 18, 20, 26
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   n_stem                       atamn — grammar: "n-stem"
%   a_stem                       azg — grammar: "a-stem"
%   i_stem                       ban — grammar: "i-stem"
%   o_stem                       beran — grammar: "o-stem"
%   u_stem                       cov — grammar: "u-stem"
%   r_stem                       hayr — grammar: "r-stem"
%   genitive_in_oy               get — grammar: "genitive in –oy"
% Irregular (listed in data/nouns.exceptions.tsv): ayr, kin, tikin, tēr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
