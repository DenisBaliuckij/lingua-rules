% rules/ono/verbs.lp
% Onondaga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 849074: Essay of an Onondaga Grammar, or a Short Introduction to Learn the Onondaga Al Maqua Tongu (1780), pages 3, 4
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   waqua_type                   waqua
%   wauntenc_type                wauntenc
%   untatta_sta_type             untatta?sta
% Irregular (listed in data/verbs.exceptions.tsv): taj echt, wack
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
