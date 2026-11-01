% rules/trw/verbs.lp
% Torwali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389860: An Overview of Linguistic Structures in Torwali, A Language of Northern Pakistan (2001), pages 54, 66, 69, 71, 78, 85, 86, 87, 88, 89
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   hfz_type                     hFz
%   jfndfr_type                  jFndFr
%   causative_verb_forms         lig — grammar: "causative verb forms"
%   finite_verb_ending_with_a_vowel mF — grammar: "finite verb ending with a vowel"
%   jussive_and_imperative_mood_forms kow — grammar: "Jussive and imperative mood forms"
%   jussive_and_imperative_mood_forms_2 bFnu — grammar: "Jussive and imperative mood forms"
% Irregular (listed in data/verbs.exceptions.tsv): ye
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
