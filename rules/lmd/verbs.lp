% rules/lmd/verbs.lp
% Lumun verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 45184: A grammar of Lumun: A Kordofanian language of Sudan (2017), pages 369, 373, 389, 392, 400
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   t_type                       ɔtʊ́ɔ
%   tt_type                      ɔtʊ́ɔt
% Irregular (listed in data/verbs.exceptions.tsv): aɔ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
