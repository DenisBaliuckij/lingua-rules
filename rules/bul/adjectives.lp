% rules/bul/adjectives.lp
% Bulgarian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389161: Очерк болгарской грамматики (1956), pages 124, 136, 148, 192, 202, 203, 206
%   doc 389162: Bulgarian (1986), pages 12, 13, 17, 18, 20, 25, 32, 33
%   doc 389163: A Concise Bulgarian Grammar (2014), pages 15, 16, 36, 42, 43, 51, 52, 56, 57, 64, 68, 69, 70
%   doc 389166: The Bulgarian Language: A Short Grammar of the (1897), pages 31, 46, 59, 60, 61, 62, 68, 69, 71, 79, 83
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   typical                      голям — grammar: "Typical"
%   typical_2                    горд, лош, хубав, чист — grammar: "Typical"
%   ordinal_numbers_and_stems_in девети, руски, трети — grammar: "Ordinal Numbers and Stems in -ск-"
%   stems_with_historical_y_glide крави — grammar: "Stems with Historical y-glide"
%   typical_3                    малък — grammar: "Typical"
%   stems_with_historical_y_glide_2 овчи — grammar: "Stems with Historical y-glide"
%   soft_adjective_forms         син — grammar: "Soft Adjective Forms"
%   typical_4                    хитър — grammar: "Typical"
%   class_type                   нов
%   typical_5                    тесен — grammar: "Typical"
%   camhh_type                   caMHH
%   class_type_2                 благодарен, основен, приятен
%   class_type_3                 близък
%   class_type_4                 зъл
%   class_type_5                 какъв
%   class_type_6                 остър, храбър
%   to_ikt_type                  TO^iKt
%   cimna_type                   cimna
%   class_type_7                 техен
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
