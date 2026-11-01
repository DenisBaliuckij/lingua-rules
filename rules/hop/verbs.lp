% rules/hop/verbs.lp
% Hopi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46723: Aspects of Hopi Grammar (1978), pages 24, 30, 73, 80, 81, 87, 88, 94, 108, 109, 110, 168, 169
%   doc 816923: Some Phonological Rules of Hopi (1982), pages 6, 8, 9
%   doc 849725: Hopi Grammar (n.d.), pages 36, 37
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   minikna_type                 minikna
%   nopna_type                   nopna
%   papti_type                   papti
%   piiwi_type                   piiwi
%   qsqya_type                   qSqya
%   qoya_type                    qoya
%   ti_type                      ti
%   tiwa_type                    tiwa
% Irregular (listed in data/verbs.exceptions.tsv): mooki, nbosa, paki, paklawi, qati, wari, wiivi, wini, yi?a?ayki
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
