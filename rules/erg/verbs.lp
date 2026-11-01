% rules/erg/verbs.lp
% Erromangan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388228: An Erromangan (Sye) Grammar (1998), pages 56, 79, 82, 83, 84, 85, 89, 104, 116
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   weak_verbs                   alou — grammar: "Weak verbs"
%   strong_verbs                 eiti — grammar: "Strong verbs"
%   strong_verbs_2               empcu — grammar: "Strong verbs"
%   weak_verbs_2                 esomsac — grammar: "Weak verbs"
%   weak_verbs_3                 itis — grammar: "Weak verbs"
%   strong_verbs_3               mah — grammar: "Strong verbs"
%   strong_verbs_4               omurep — grammar: "Strong verbs"
%   weak_verbs_4                 soki — grammar: "Weak verbs"
%   weak_verbs_5                 uri — grammar: "Weak verbs"
%   weak_verbs_6                 yevi — grammar: "Weak verbs"
% Irregular (listed in data/verbs.exceptions.tsv): elac, elom, eve, tovop 'laugh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
