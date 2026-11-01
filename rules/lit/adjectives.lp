% rules/lit/adjectives.lp
% Lithuanian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389186: A Short Grammar of Lithuanian (1996), pages 40, 42, 43, 44, 45, 46, 47, 48, 59, 60, 62, 66, 73, 101, 107, 108, 112, 113, 130, 131, 140, 159
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gerasis_type                 gerasis
%   grazusis_type                gražusis
%   third_declension             auksinis — grammar: "third declension"
%   first_declension             didelis — grammar: "First Declension"
%   first_declension_2           didis — grammar: "First Declension"
%   first_declension_3           geras — grammar: "First Declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
