% rules/xtn/verbs.lp
% Northern Tlaxiaco Mixtec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 69357: Gramática popular: Mixteco del norte de Tlaxiaco (2016), pages 22, 53, 54, 68, 128, 129, 130
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kata_type                    kata
%   koto_type                    koto
%   kute_type                    kute
% Irregular (listed in data/verbs.exceptions.tsv): kiꞌi, koskii, koꞌo, kusun, kuu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
