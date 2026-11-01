% rules/csb/verbs.lp
% Cassubian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389087: Cassubian (1989), pages 11, 13, 14, 15, 16, 17, 18, 19
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   third_conjugation_contracted grac — grammar: "Third conjugation (contracted)"
%   second_conjugation           robie — grammar: "Second conjugation"
%   first_conjugation            niesc — grammar: "First conjugation"
%   robic_type                   robić
% Irregular (listed in data/verbs.exceptions.tsv): jeć
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
