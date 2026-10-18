% rules/ylr/verbs.lp
% Yalarnnga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 213: The grammar of Yalarnnga: A language of western Queensland (2007), pages 27, 28, 29, 30, 50, 87, 91
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): carry, give, go, hit, leave, nanyi, ngunyi, run, see
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
