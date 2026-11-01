% rules/djc/verbs.lp
% Dar Daju Daju verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296319: The Phonology and Morphology of the Dar Daju Daju Language (2008), pages 49, 50, 52, 68, 72, 73
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   progressive_aspect           uɾcɑ — grammar: "Progressive Aspect"
%   durative_aspect              uɾtɑdi — grammar: "Durative Aspect"
%   unmarked_form_of_verb        ɑɾke — grammar: "Unmarked Form of Verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
