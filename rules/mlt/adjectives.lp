% rules/mlt/adjectives.lp
% Maltese adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28917: The Grammar of Maltese Prepositions (2025), pages 239
%   doc 80028: Basic Maltese Grammar (n.d.), pages 4, 14, 16, 19, 24, 25
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   demonstrative_adjectives_pronouns dak — grammar: "Demonstrative adjectives / pronouns"
%   demonstrative_adjectives_pronouns_2 dan — grammar: "Demonstrative adjectives / pronouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
