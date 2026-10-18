% rules/uga/verbs.lp
% Ugaritic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292706: Ugaritic Textbook: Grammar, Texts in Transliteration, Cuneiform Selections, Glossary, Indi (1998), pages 173
%   doc 389674: A Manual of Ugaritic (2009), pages 50, 51, 65
%   doc 827771: An Introduction to Ugaritic (2012), pages 52, 68, 69, 70, 72, 77, 81, 229
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   u_class_verbs                yqd — grammar: "/u/-class verbs"
%   qatal_type                   mlk — grammar: "qatal- type"
%   active_participle_g          qätilu — grammar: "Active Participle (G)"
%   u_class_verbs_2              qd — grammar: "/u/-class verbs"
%   n                            naqtala — grammar: "N"
%   d                            qattila — grammar: "D"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
