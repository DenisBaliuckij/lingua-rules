% rules/hus/verbs.lp
% Huastec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 110201: Noticia de la lengua huasteca : que en beneficio de sus nacionales, de orden del ilm. sr.  (n.d.), pages 36, 53
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   primera_conjugacion          tahjal — grammar: "primera conjugación"
% Irregular (listed in data/verbs.exceptions.tsv): luhum
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
