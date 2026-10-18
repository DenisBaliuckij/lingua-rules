% rules/kvd/verbs.lp
% Kui verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296060: A Grammar of the Kui Language (1909), pages 43, 46, 53, 75, 76, 80
%   doc 296061: An Introduction to the Grammar of the Kui or Kandh Language (1902), pages 22, 26, 27, 32, 33, 35, 36, 37, 39, 41, 42
%   doc 849758: SARALA (TRIBHASI) BHASHA SIKSHYANA PUSTIKA (KUI) (2018), pages 19, 20, 40
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   second_conjugation           meh — grammar: "Second Conjugation"
%   si_type                      si
%   gi_type                      gi
%   venba_type                   venba
%   go_type                      go
%   fourth_conjugation           a — grammar: "Fourth Conjugation"
%   dnu_type                     dnu
%   kb_d_type                    kb-d
%   sid_type                     sid
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
