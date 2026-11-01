% rules/hdy/verbs.lp
% Hadiyya verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 827748: Predicate Conjoining in Hadiyya: A Head-Driven PS Grammar (1989), pages 114, 120, 151, 152, 156, 157, 160, 163, 250
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   mass_type                    mass
%   present_continuous           massoommulla — grammar: "Present Continuous"
%   imperfect_continuous         massoorrnnane — grammar: "Imperfect Continuous"
%   perfect_continuous           massurrnnane — grammar: "Perfect Continuous"
%   subjunctive1                 massa — grammar: "Subjunctive1"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
