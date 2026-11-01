% rules/wgi/verbs.lp
% Wahgi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289624: Wahgi phonology and morphology (1976), pages 112, 113, 121
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dependent_primary_s_sub_verb_class_b go-š-umb — grammar: "Dependent Primary S-Sub verb, Class B"
%   dependent_primary_s_sub_verb_class_a no-mb — grammar: "Dependent Primary S-Sub verb, Class A"
%   dependent_primary_s_sub_verb_class_c pi-l-imb — grammar: "Dependent Primary S-Sub verb, Class C"
%   dependent_primary_d_sub_imp_verb_class_b go-š-i — grammar: "Dependent Primary D-Sub-Imp verb, Class B"
%   dependent_primary_d_sub_p_verb_class_b go-š-nge — grammar: "Dependent Primary D-Sub-P verb, Class B"
%   dependent_primary_d_sub_imp_verb_class_a no-i — grammar: "Dependent Primary D-Sub-Imp verb, Class A"
%   dependent_primary_d_sub_p_verb_class_a no-nge — grammar: "Dependent Primary D-Sub-P verb, Class A"
%   dependent_primary_d_sub_imp_verb_class_c pi-l-i — grammar: "Dependent Primary D-Sub-Imp verb, Class C"
%   dependent_primary_d_sub_p_verb_class_c pi-l-nge — grammar: "Dependent Primary D-Sub-P verb, Class C"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
