% rules/bea/verbs.lp
% Beaver verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70670: A Writer's Resource: A Handbook for Writing and Research (Sixth Edition) (2014), pages 518, 519, 613
%   doc 70853: Elementary English in Action. Grade V (n.d.), pages 284, 285
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   often_confused_verbs_and_their_principal lay — grammar: "Often-Confused Verbs and Their Principal Forms"
%   often_confused_verbs_and_their_principal_2 lie — grammar: "Often-Confused Verbs and Their Principal Forms"
%   common_irregular_verbs       raise — grammar: "COMMON IRREGULAR VERBS"
% Irregular (listed in data/verbs.exceptions.tsv): arise, awake, be, beat, become, begin, blow, break, bring, buy, catch, choose ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
