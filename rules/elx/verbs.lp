% rules/elx/verbs.lp
% Elamite verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 37644: The Ancient Languages of Mesopotamia, Egypt, and Aksum (2008), pages 24, 28, 69, 71, 95
%   doc 388701: Éléments de grammaire élamite (1987), pages 33
%   doc 388999: The Phonology and Morphology of Royal Achaemenid Elamite (1955), pages 62
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   conjugaison_verbale_conj_i   hutta — grammar: "conjugaison verbale (= Conj. I)"
%   g_durative_parrvs            pariisum — grammar: "G durative (parrVs)"
%   sgm_type                     sgm
%   s_stem                       spras — grammar: "S stem"
%   s_stem_2                     stapris — grammar: "S stem"
%   g_perfect_ptarvs             parasum — grammar: "G perfect (ptarVs)"
%   me_type                      me
% Irregular (listed in data/verbs.exceptions.tsv): to enter, to go, to kill, to live, to sit, to speak, to stand
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
