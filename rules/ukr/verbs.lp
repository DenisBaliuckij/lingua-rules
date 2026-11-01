% rules/ukr/verbs.lp
% Ukrainian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23884: L'Ucraïnès: estudi comparatiu entre la gramàtica del català i la de l'ucraïnès (2006), pages 59, 61, 62, 65, 80
%   doc 389225: Ukrainian (1976), pages 11, 16, 24
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   y_a_verbs                    кричати — grammar: "y/a verbs"
%   e_u_verbs                    нести — grammar: "e/u verbs"
%   verb_imperfectiu             čytáty — grammar: "Verb imperfectiu"
%   verb_perfectiu               pročytáty — grammar: "Verb perfectiu"
% Irregular (listed in data/verbs.exceptions.tsv): дати, їсти
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
