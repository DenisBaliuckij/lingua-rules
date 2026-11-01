% rules/ahh/verbs.lp
% Aghu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289409: Aghu: Annotated texts with grammatical introduction and vocabulary lists (2016), pages 55, 87, 89, 111, 127, 139, 144, 145, 156, 249, 344
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   semifinite_realis_verbs      tame, ede, fimi — grammar: "semifinite realis verbs"
%   da_type                      da
%   semifinite_realis_verbs_2    fi, üfü — grammar: "semifinite realis verbs"
%   semifinite_realis_verbs_3    i — grammar: "semifinite realis verbs"
%   semifinite_realis_verbs_4    kũ — grammar: "semifinite realis verbs"
%   type_ii                      afi, ajü — grammar: "type II"
%   semifinite_irrealis_forms_in_ne adi — grammar: "semifinite irrealis forms in -ne"
%   posture_verb                 aike — grammar: "posture verb"
%   semifinite_irrealis_forms_in_ne_2 bèje — grammar: "semifinite irrealis forms in -ne"
%   durative_future_forms        bē — grammar: "Durative future forms"
%   type_ii_2                    bēje — grammar: "type II"
%   durative_future_forms_2      õ — grammar: "Durative future forms"
%   posture_verb_2               ieke — grammar: "posture verb"
%   semifinite_irrealis_forms_in_ne_3 atü — grammar: "semifinite irrealis forms in -ne"
%   posture_verb_3               boke — grammar: "posture verb"
%   posture_verb_4               āke — grammar: "posture verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
