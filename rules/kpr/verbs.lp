% rules/kpr/verbs.lp
% Korafe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 815890: The interface between syntax and discourse in Korafe, a Papuan language of Papua New Guine (1999), pages 50, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 75, 77, 78, 79, 80, 81
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   gi_type                      gi
%   se_type                      se
%   tere_type                    tere
%   see_type                     see
%   say_type                     say
%   gembu_type                   gembu
%   si_type                      si, gosu, gefu, teteru
%   u_verbs                      fu — grammar: "u-verbs"
%   i_verbs                      i — grammar: "i-verbs"
%   counterfactual_paradigm_encoding_overlap gefur — grammar: "counterfactual paradigm encoding overlap"
%   counterfactual_paradigm_encoding_overlap_2 teter — grammar: "counterfactual paradigm encoding overlap"
%   os_simultaneous_customary_paradigm gef-ur-eono, gosu-r-ur-eono, si-r-ur-eono, teter-ur-eono — grammar: "OS simultaneous customary paradigm"
%   u_verb                       gernbu — grammar: "u-verb"
%   e_verbs                      anumb-e — grammar: "e-verbs"
%   u_verbs_2                    b-u — grammar: "u-verbs"
%   u_verbs_3                    d-u — grammar: "u-verbs"
%   i_verbs_2                    g-i — grammar: "i-verbs"
%   i_verbs_3                    ir-i — grammar: "i-verbs"
%   i_verbs_4                    it-i — grammar: "i-verbs"
%   i_verbs_5                    sand-i — grammar: "i-verbs"
%   e_verbs_2                    ter-e — grammar: "e-verbs"
%   e_verbs_3                    bund-e — grammar: "e-verbs"
%   e_verbs_4                    dav-e — grammar: "e-verbs"
%   u_verbs_4                    dimb-u — grammar: "u-verbs"
%   simple_imperative            e — grammar: "simple imperative"
%   u_verbs_5                    gemb-u — grammar: "u-verbs"
%   e_verbs_5                    gov-e — grammar: "e-verbs"
%   i_verbs_6                    mind-i — grammar: "i-verbs"
%   e_verbs_6                    s-e — grammar: "e-verbs"
%   u_verbs_6                    sumb-u — grammar: "u-verbs"
% Irregular (listed in data/verbs.exceptions.tsv): iri
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
