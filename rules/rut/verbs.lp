% rules/rut/verbs.lp
% Rutul verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72247: Rutul (2017), pages 14, 19
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   weak_to_play                 hu-lq’u-n — grammar: "weak 'to play'"
%   strong_to_come               ji-r-q’ɨ-n — grammar: "strong 'to come'"
%   weak_to_start                kaˤ-č’uˤ-n — grammar: "weak 'to start'"
%   weak_to_jump                 li-j-či-n — grammar: "weak 'to jump'"
%   strong_to_pull               ri-ʔi-n — grammar: "strong 'to pull'"
%   weak_to_die                  ji-q’i-n — grammar: "weak 'to die'"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
