% rules/pui/nouns.lp
% Puinave nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78054: Una gramática del Wãnsöjöt (Puinave) (2008), pages 190, 192, 194, 206, 212
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kaqwa_type                   kaqwa
%   yo34t_type                   yo¾t
% Irregular (listed in data/nouns.exceptions.tsv): keqpa, mo-’i’Õ, mo-’u’Ð, watyeqka, yoÕt, Õt
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
