% rules/hoa/verbs.lp
% Hoava verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289591: A grammar of the Hoava language, Western Solomons (2003), pages 97, 103, 144
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   cvv_verbs                    bao — grammar: "CVV verbs"
%   cvcv_verbs                   gona — grammar: "CVCV verbs"
%   cvcv_verbs_2                 hapu — grammar: "CVCV verbs"
%   cvcv_verbs_3                 mono — grammar: "CVCV verbs"
%   cvcv_verbs_4                 nam — grammar: "CVCV verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
