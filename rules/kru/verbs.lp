% rules/kru/verbs.lp
% Kurukh verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2930: The Kurux Language: Grammar, Texts and Lexicon (2017), pages 96, 107, 112, 113, 114, 145, 150, 151, 152, 153, 154, 155, 156, 157, 158
%   doc 26324: Kurukh Grammar (1911), pages 28, 33, 40, 41, 42, 44, 45, 46, 48, 49, 53, 62, 63, 67, 68, 71, 73, 84, 85, 86
%   doc 849769: SARALA (TRIBHASI) BHASHA SIKSHYANA PUSTIKA (ORAON) (2018), pages 39, 40
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   present_tense                es — grammar: "Present tense"
%   mox_a_type                   moːx-aː, eːr-aː
%   second_class_of_verbs        ra'ana — grammar: "second class of verbs"
%   subjunctive                  barʔ-aː — grammar: "subjunctive"
% Irregular (listed in data/verbs.exceptions.tsv): arg-aː, ka'and, taldan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
