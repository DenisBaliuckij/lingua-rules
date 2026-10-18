% rules/jel/adjectives.lp
% Yelmek adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 251: A Documentation and Description of Yelmek and Maklew (2020), pages 50, 106, 211, 231, 232, 233, 234, 235, 236, 237, 251, 252, 260, 261, 263, 265, 330
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   dapi_type                    dapi, glido, ipa, kalapo ...
%   dom_type                     dom, dəmo
%   klmap_type                   kəlmap, yam
%   yik_type                     yik
%   ato_type                     ato
%   deo_type                     deŋo
%   kokol_type                   kokol
%   temi_type                    temi
%   tb_type                      təbʉ
%   yelu_type                    yelu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
