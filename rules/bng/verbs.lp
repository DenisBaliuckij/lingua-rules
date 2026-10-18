% rules/bng/verbs.lp
% Benga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 845738: Benga Grammar (n.d.), pages 49, 65, 67, 91, 107, 108
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kala_type                    kala
%   pdkd_type                    pdkd
%   third_conjugation_ke         yenekt — grammar: "third conjugation (-ke)"
%   tamua_type                   tamua
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
