% rules/buw/verbs.lp
% Bubi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38081: Introduction to the Fernandian Tongue Part I (1908), pages 22, 23, 31, 43
%   doc 38507: Essai de grammaire Pove: Langue bantoue du groupe B.30 (Volume II) (1994), pages 101, 249
%   doc 38512: Curso de lengua bubi (1991), pages 129, 132, 136, 137
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   gfna_type                    gfna
%   lappa_type                   láppa
%   ra_type                      rá
%   sossa_type                   sossa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
