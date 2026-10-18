% rules/kus/verbs.lp
% Kusaal verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 183: Grammaire élémentaire du kusaal parlé au Burkina Faso (2014), pages 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 56, 57
%   doc 51192: A Grammar of Agolle Kusaal: Revised Version (2015), pages 144, 145, 229, 231, 234, 261, 314, 315
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   variable_verbs               yùuge — grammar: "Variable Verbs"
%   variable_verbs_2             yādɩge — grammar: "Variable Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
