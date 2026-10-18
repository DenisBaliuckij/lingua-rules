% rules/kjv/verbs.lp
% Illirica (Slavic) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105438: Grammatica della lingua slava (illirica) (1878), pages 42, 53, 55, 57, 58, 59, 60, 63, 64, 67, 100, 106, 107, 108, 111, 112, 113
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   hvaliti_type                 hvaliti
%   hvali_ti_type                hvali-ti
% Irregular (listed in data/verbs.exceptions.tsv): biti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
