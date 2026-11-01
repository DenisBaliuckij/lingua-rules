% rules/xns/adjectives.lp
% Kanashi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 96177: Synchronic and Diachronic Aspects of Kanashi (2022), pages 108, 127, 128, 129, 153, 156, 160
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   category_4                   buɽ — grammar: "category 4"
%   category_4_2                 kaːɳ, ʃobil — grammar: "category 4"
%   category_4_3                 maʦl — grammar: "category 4"
%   category_4_4                 moʈʰ — grammar: "category 4"
%   category_4_5                 roʈʰ — grammar: "category 4"
%   category_3                   ʧʰog — grammar: "category 3"
%   category_2                   beʈaɽi — grammar: "category 2"
%   category_2_2                 juʃk — grammar: "category 2"
%   category_2_3                 munuk — grammar: "category 2"
%   category_2_4                 rok — grammar: "category 2"
%   category_2_5                 seʈ — grammar: "category 2"
%   category_2_6                 ʤaŋʦ — grammar: "category 2"
%   category_2_7                 ʧara — grammar: "category 2"
%   category_2_8                 ʧimeʦ — grammar: "category 2"
%   category_2_9                 ʧʰakʦ — grammar: "category 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
