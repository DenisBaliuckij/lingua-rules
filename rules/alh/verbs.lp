% rules/alh/verbs.lp
% Alawa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 64545: Alawa Phonology and Grammar (1972), pages 80, 93, 101, 104
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   regular_inflection           apu — grammar: "regular inflection"
%   regular_inflection_2         ba — grammar: "regular inflection"
%   regular_inflection_3         tjata — grammar: "regular inflection"
% Irregular (listed in data/verbs.exceptions.tsv): be, go
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
