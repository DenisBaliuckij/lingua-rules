% rules/gle/verbs.lp
% Irish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68423: Modern Irish: Grammatical Structure and Dialectal Variation (1989), pages 129, 171, 172, 173, 174, 175, 176
%   doc 388257: Irish (2001), pages 33, 34, 38, 44, 45, 48, 49, 55
%   doc 388260: A Grammar of the Irish Language (1896), pages 32, 34, 78, 79, 91, 92, 95, 96
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   glan_type                    glan
%   pagann_type                  pagann
%   second_conjugation           ceannaigh — grammar: "second conjugation"
%   cua_ap_type                  cua&ap
%   copula_in_relative_clauses   is — grammar: "copula in relative clauses"
%   cdngamap_type                cdngamap
%   cuireann_type                cuireann
%   bearr_type                   bearr
%   cain_type                    cain
%   cisinn_type                  cisinn
%   imigh_type                   imigh
%   mothaigh_type                mothaigh
% Irregular (listed in data/verbs.exceptions.tsv): beipim, cdim
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
