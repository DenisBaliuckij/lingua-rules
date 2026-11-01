% rules/pnw/nouns.lp
% Panytyima nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289774: Panyjima Phonology and Morphology (1991), pages 68, 69, 75, 91
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   compass_points               kakarra — grammar: "compass points"
%   compass_points_2             kurila — grammar: "compass points"
%   compass_points_3             wartalpa — grammar: "compass points"
%   compass_points_4             wuluju — grammar: "compass points"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
