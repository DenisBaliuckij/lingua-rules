% rules/csb/adjectives.lp
% Cassubian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389087: Cassubian (1989), pages 11, 13, 14, 15, 16, 17, 18, 19
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   long_form_adjectives         młodi, zdrowi — grammar: "Long-form adjectives"
%   short_form_adjectives        zdrów — grammar: "Short-form adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
