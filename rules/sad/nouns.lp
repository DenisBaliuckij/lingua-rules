% rules/sad/nouns.lp
% Sandawe nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 178: A grammar of Sandawe: A Khoisan language of Tanzania (2012), pages 73, 75, 104, 105, 206, 213
%   doc 84803: A Sandawe Grammar (2010), pages 58, 85
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vdqgdzh_type                 vdqgdzh#
%   wvzh_type                    wvzh#
% Irregular (listed in data/nouns.exceptions.tsv): wkd#phwvkx
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
