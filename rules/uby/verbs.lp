% rules/uby/verbs.lp
% Ubykh verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68735: A Grammar of Ubykh (2011), pages 81
%   doc 852601: Die Sprache der Ubychen: Grammatische Skizze, Texte, Ubychisches Glossar nebst deutschem I (1928), pages 34
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   bi_type                      bi
%   mis_type                     miS
%   uq_type                      uq
%   tb_type                      tb
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
