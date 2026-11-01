% rules/shu/verbs.lp
% Chadian Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 627862: Chadian Arabic (1995), pages 9, 11, 12, 13, 14
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   c_w_c_verbs                  giil — grammar: "C-W-C Verbs"
%   c_w_c_verbs_2                sir — grammar: "C-W-C Verbs"
%   doubly_weak_verbs_c_c_c_with_identical_2 lga — grammar: "doubly weak verbs (C-C-C with identical 2nd and 3rd radicals)"
%   doubly_weak_verbs_c_c_c_with_identical_2_2 midda — grammar: "doubly weak verbs (C-C-C with identical 2nd and 3rd radicals)"
%   quadriliteral_verbs          saglab — grammar: "quadriliteral verbs"
%   c_w_c_verbs_3                gul — grammar: "C-W-C Verbs"
%   c_c_c_verbs                  sirib — grammar: "C-C-C Verbs"
%   w_c_c_verbs                  wisil — grammar: "W-C-C Verbs"
%   quadriliteral_verbs_2        saglib — grammar: "quadriliteral verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
