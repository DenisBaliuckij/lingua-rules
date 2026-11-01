% rules/xdk/verbs.lp
% Dharug verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 74315: Halliday's Introduction to Functional Grammar (Fourth Edition) (2014), pages 81, 172, 184, 420
%   doc 74324: Deploying Functional Grammar (2010), pages 21, 186
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   be_type                      be
%   have_type                    have
%   lift_type                    lift
%   take_type                    take
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
