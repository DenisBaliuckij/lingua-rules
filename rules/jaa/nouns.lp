% rules/jaa/nouns.lp
% Jarawara nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389915: The Jarawara Language of Southern Amazonia (2004), pages 324
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   set_iv                       oka-naki — grammar: "set IV"
%   set_ii                       okaki, okasima, okati, okiti — grammar: "set II"
%   set_iii                      okakoko, okaniso — grammar: "set III"
%   set_v                        oko-koma — grammar: "set V"
%   set_iv_2                     oko-wabo — grammar: "set IV"
%   set_i                        okobi, okojo, okomi — grammar: "set I"
%   set_ii_2                     okoso — grammar: "set II"
%   set_vi                       okatao — grammar: "set VI"
%   set_vi_2                     okoto — grammar: "set VI"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
