% rules/kwo/verbs.lp
% Kwomtari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38397: Kwomtari Phonology and Grammar Essentials (2008), pages 68, 76, 79, 112, 113
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   inherently_singular_and_plural_verbs ambukole — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_2 bunene — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_3 fuele — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_4 fura — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_5 kife — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_6 piele — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_7 pinale — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_8 rofo — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_9 rupale — grammar: "inherently singular and plural verbs"
%   inherently_singular_and_plural_verbs_10 tira — grammar: "inherently singular and plural verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
