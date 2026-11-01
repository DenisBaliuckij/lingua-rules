% rules/dbu/adjectives.lp
% Najamba Dogon adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296242: A Grammar of Najamba Dogon (= Bondu-So) (2009), pages 81, 89, 99, 100, 104, 105, 107, 108, 109, 111, 140, 240, 246, 256, 350
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   suffixing_adjectives_with_four_forms_ye piɛ̀ — grammar: "suffixing adjectives with four forms (-ye/∅, -ŋgo, -ŋge, -mbo)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
