% rules/mar/nouns.lp
% Marathi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292857: Grammar of the Marathi Language (1834), pages 37, 41, 43, 87, 90, 91, 92, 93, 95, 96, 99, 106, 123
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dec_i                        बाप — grammar: "Dec. I"
%   declension_iv                सू — grammar: "Declension IV"
%   dec_i_2                      करणारा — grammar: "Dec. I"
%   dec_i_3                      करणारें — grammar: "Dec. I"
%   dec_i_4                      करणें — grammar: "Dec. I"
%   dec_i_5                      घोडा — grammar: "Dec. I"
%   declension_iv_2              जीभ — grammar: "Declension IV"
%   dec_i_6                      जूं — grammar: "Dec. I"
%   declension_v                 टाहो, मोहो, लाहो — grammar: "Declension V"
%   dec_i_7                      पाप — grammar: "Dec. I"
%   declension_v_2               बायको — grammar: "Declension V"
%   dec_i_8                      बों — grammar: "Dec. I"
%   declension_iv_3              माता — grammar: "Declension IV"
%   dec_i_9                      रु — grammar: "Dec. I"
%   declension_iv_4              सासू — grammar: "Declension IV"
%   dec_i_10                     तारूं — grammar: "Dec. I"
%   dec_i_11                     पाणी — grammar: "Dec. I"
%   dec_i_12                     बिगारी — grammar: "Dec. I"
%   dec_i_13                     भाऊ — grammar: "Dec. I"
%   dec_i_14                     मामा — grammar: "Dec. I"
%   dec_i_15                     मोतों — grammar: "Dec. I"
%   dec_i_16                     यात्रकरू — grammar: "Dec. I"
%   dec_i_17                     लेंकरूं — grammar: "Dec. I"
%   dec_i_18                     वाटाड्या — grammar: "Dec. I"
%   declension_iv_5              विल्हे — grammar: "Declension IV"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
