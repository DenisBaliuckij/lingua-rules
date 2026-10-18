% rules/kxv/verbs.lp
% Kuvi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296059: A Grammar of the Kuvi Language, with Copious Examples (1911), pages 16, 18, 46, 47, 48, 71, 72, 76, 105, 113, 114, 115, 116, 117, 118, 122, 125, 127, 128, 129, 130, 136, 137, 138, 141, 142, 167, 174
%   doc 897607: Kuvi Grammar (n.d.), pages 73, 74, 75, 76, 80, 81, 82, 91, 92, 93
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   first_conjugation            wa — grammar: "FIRST CONJUGATION"
%   mli_type                     mli
%   c2_conjugation_of_man_be     man — grammar: "2. Conjugation of man (be,)"
%   third_conjugation            ren, han — grammar: "third conjugation"
%   second_conjugation           goh — grammar: "Second Conjugation"
%   second_conjugation_2         rih — grammar: "Second Conjugation"
%   second_conjugation_3         weh — grammar: "Second Conjugation"
%   regular_verbs                kep, zol, hat — grammar: "regular verbs"
%   third_conjugation_2          in — grammar: "third conjugation"
%   regular_verbs_of_fourth_conjugation kluph — grammar: "Regular Verbs of Fourth Conjugation"
%   third_conjugation_3          pun — grammar: "third conjugation"
%   regular_verbs_of_fourth_conjugation_2 porh — grammar: "Regular Verbs of Fourth Conjugation"
%   hillaa_type                  hillaa
%   ki_type                      ki
%   habitual_past                manzi — grammar: "Habitual Past"
%   imperative                   manzu — grammar: "Imperative"
% Irregular (listed in data/verbs.exceptions.tsv): gla, oot, re
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
