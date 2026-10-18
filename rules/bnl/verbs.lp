% rules/bnl/verbs.lp
% bnl verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25226: Mechanically Inclined: Building Grammar, Usage, and Style into Writer's Workshop (2005), pages 129, 137, 143, 189, 190, 191, 193, 194
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   do_type                      do
%   be_type                      be
%   have_type                    have
%   talk_type                    talk, walk
% Irregular (listed in data/verbs.exceptions.tsv): become, begin, bring, buy, catch, come, cost, draw, eat, fall, give, go ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
