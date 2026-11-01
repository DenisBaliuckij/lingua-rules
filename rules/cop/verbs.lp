% rules/cop/verbs.lp
% Coptic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 822061: A Coptic Grammar: With Chrestomathy and Glossary (Sahidic Dialect) (2000), pages 78, 271, 332
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   non_durative_conjugation_patterns a — grammar: "non-durative conjugation patterns"
%   primary_set_of_personal_intermediates ccuTn — grammar: "Primary Set of Personal Intermediates"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
