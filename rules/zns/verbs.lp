% rules/zns/verbs.lp
% Mansi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389031: Vogul (2001), pages 13, 14, 17, 18, 21, 22, 23, 24, 25, 26
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   wor_type                     wör
%   at_type                      at
%   indeterminate_conjugation    min — grammar: "indeterminate conjugation"
%   rupit_type                   rupit
%   sopit_type                   sopit
%   f_type                       f
%   jozt_type                    jozt
%   tot_type                     tot
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
