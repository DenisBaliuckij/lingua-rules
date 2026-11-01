% rules/pau/nouns.lp
% Palauan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289430: Palauan Reference Grammar (n.d.), pages 83, 108, 126, 130, 133, 134, 140, 165, 166, 197, 264, 266, 406, 568, 570
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   i_set                        buch — grammar: "i set"
%   a_set                        char — grammar: "a set"
%   e_set                        charm — grammar: "e set"
%   noun_of_obligation           kirek — grammar: "Noun of Obligation"
%   u_set                        reng — grammar: "u set"
%   noun_of_liking               soak — grammar: "Noun of Liking"
%   noun_of_ability              sȩbȩchek — grammar: "Noun of Ability"
% Irregular (listed in data/nouns.exceptions.tsv): chȩtik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
