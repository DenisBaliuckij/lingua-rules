% rules/kas/adjectives.lp
% Kashmiri adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389792: Kashmiri: A Cognitive-Descriptive Grammar (1996), pages 226, 227, 228, 229, 245, 246, 247, 276, 347, 354, 355, 356, 357, 358, 359, 360, 361, 362, 368, 369, 370, 376
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectives_of_comparison_referring_to_qu yitsh, titsh — grammar: "Adjectives of comparison referring to quality (Feminine)"
%   adjectives_of_comparison_referring_to_qu_2 yuth — grammar: "Adjectives of comparison referring to quality (Masculine)"
%   adjectives_of_comparison_in_terms_of_qua t'u:t — grammar: "Adjectives of comparison in terms of quantity (Masculine)"
%   adjectives_of_comparison_referring_to_qu_3 t'uth — grammar: "Adjectives of comparison referring to quality (Masculine)"
%   adjectives_of_comparison_in_terms_of_qua_2 yi:ts — grammar: "Adjectives of comparison in terms of quantity (Feminine)"
%   adjectives_of_comparison_in_terms_of_qua_3 ti:ts — grammar: "Adjectives of comparison in terms of quantity (Feminine)"
%   adjectives_of_comparison_in_terms_of_qua_4 yu:t — grammar: "Adjectives of comparison in terms of quantity (Masculine)"
%   ga_type                      ga
%   lot_type                     lot
%   rut_type                     rut
%   n_u_l_type                   n'u:l
%   thod_type                    thod
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
