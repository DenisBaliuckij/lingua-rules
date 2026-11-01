% rules/khv/nouns.lp
% Khwarshi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 120: A Grammar of Khwarshi (2009), pages 54, 72, 84, 119, 125, 126, 160, 162, 201
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   two_stem_inflection_nouns    ze — grammar: "two-stem inflection nouns"
%   two_stem_inflection_nouns_2  tawxán — grammar: "two-stem inflection nouns"
%   himon_type                   himón
%   isu_type                     íšu
%   obu_type                     óbu
% Irregular (listed in data/nouns.exceptions.tsv): Is
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
