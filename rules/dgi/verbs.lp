% rules/dgi/verbs.lp
% Dagaare verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38769: Collected Language Notes on Dagaare Grammar (2005), pages 46, 47, 51
%   doc 841825: A dictionary and grammatical sketch of Dagaare (2021), pages 28, 37, 255
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ogi_type                     ogi
%   oli_oli_type                 oli-oli
%   oone_type                    oone, ŋmoone
%   oore_type                    oore, ŋmore
%   monne_type                   ŋmonne
%   moo_type                     ŋmoo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
