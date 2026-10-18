% rules/hin/verbs.lp
% Hindi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920758: Morphology and Syntax of Old Hindī: Edition and Analysis of One Hundred Kabīr vānī Poems f (2013), pages 276
%   doc 937603: A Grammar of the Hindi Language: In Which Are Treated the High Hindi, Braj, and the Easter (1893), pages 189, 233, 260, 342
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   imperative                   chala — grammar: "Imperative"
%   sona_type                    sona
%   buna_type                    buna
%   lana_type                    lana
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
