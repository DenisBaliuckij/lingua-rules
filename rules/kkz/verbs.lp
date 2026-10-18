% rules/kkz/verbs.lp
% Kaska verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105518: Précis de grammaire nahanaise (1857), pages 19, 27, 33, 35, 41, 44
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   premiere_conjugaison         estcoc — grammar: "premiere conjugaison"
%   verbe_substantif             slin — grammar: "verbe substantif"
% Irregular (listed in data/verbs.exceptions.tsv): dire, séstah
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
