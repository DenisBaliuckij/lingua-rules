% rules/arb/adjectives.lp
% Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14256: A Reference Grammar of Modern Standard Arabic (2017), pages 135, 165, 166, 174, 175, 341, 507, 516, 526, 539, 556, 566, 567, 579, 581, 582, 591, 603, 605, 646, 648
%   doc 108586: Grammatica Arabica (1834), pages 65, 217, 218, 248, 249, 276, 393, 394, 398, 403, 408, 409, 410, 440, 442
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ordinale                     أول — grammar: "Ordinale"
%   form_i_ap_adjective          haakim — grammar: "Form I AP adjective"
%   form_i_ap_adjective_2        kaatib — grammar: "Form I AP adjective"
%   form_i_ap_adjective_3        zaa√ir — grammar: "Form I AP adjective"
%   form_i_ap_adjective_4        ﬁaamil — grammar: "Form I AP adjective"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
