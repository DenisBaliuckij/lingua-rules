% rules/bel/adjectives.lp
% Belarusian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389565: Belorussian (1985), pages 15, 16, 20, 21, 23, 28
%   doc 389567: Fundamentals of Modern Belarusian (2004), pages 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 22, 24, 25, 26, 35, 36, 51, 52, 57, 58, 61, 63
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   non_palatalized_stem         малады — grammar: "Non-palatalized stem"
%   palatalized_stem             asenni — grammar: "Palatalized stem"
%   non_palatalized_stem_2       malady — grammar: "Non-palatalized stem"
%   non_palatalized_stem_3       novy — grammar: "Non-palatalized stem"
%   soft_stem_adjectives         апошні — grammar: "Soft stem adjectives"
%   adjectives_with_accented_endings_of_or другі — grammar: "Adjectives with accented endings of –гі, -кі, or –хі"
%   unaccented_endings_of_or     хуткі — grammar: "unaccented endings of –гі, -кі, or –хі"
%   hard_stem_adjectives_with_unaccented_end чырвоны — grammar: "Hard stem adjectives with unaccented endings"
%   non_palatalized_stem_4       новы — grammar: "Non-palatalized stem"
%   palatalized_stem_2           асёнш — grammar: "Palatalized stem"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
