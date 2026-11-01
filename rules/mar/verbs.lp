% rules/mar/verbs.lp
% Marathi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292857: Grammar of the Marathi Language (1834), pages 37, 41, 43, 87, 90, 91, 92, 93, 95, 96, 99, 106, 123
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   subjunctive_mode_present_tense_kartari_p असणे — grammar: "SUBJUNCTIVE MODE. PRESENT TENSE. KARTARI PRAYOG."
%   irregular_present_tense_1st_form असणें — grammar: "Irregular. PRESENT TENSE. 1st Form."
%   class_type                   लें
%   class_type_2                 पडणे
%   class_type_3                 मोडणे
%   class_type_4                 वा
%   causal_verbs                 जावविणें, देवविणें, फिरविणें, करविणें — grammar: "causal verbs"
%   class_type_5                 लेला
% Irregular (listed in data/verbs.exceptions.tsv): जाणें, देणें, धुणें, पिणें, भिणें, येणें, लिहिणें, लेणें, होणें
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
