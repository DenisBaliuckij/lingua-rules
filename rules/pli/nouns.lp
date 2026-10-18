% rules/pli/nouns.lp
% Pali nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 54928: Kaccāyana Pāli Vyākaraṇaṁ: Kaccāyana Pāli Grammar, Volume 2 (2016), pages 315, 611, 617, 621, 635
%   doc 54946: Kaccāyana Pāli Vyākaraṇaṁ: Kaccāyana Pāli Grammar. Volume 1. The Complete Text (2016), pages 414, 415
%   doc 912048: Grammar and Dictionary of The Pali Language (1998), pages 665
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   masculine_nouns_ending_in_a_v Buddha — grammar: "Masculine Nouns ending in A (v)"
%   citta_type                   Citta
%   kanna_type                   Kaññā
%   purisa_type                  Purisa
%   bhatu_type                   bhātu, mātu, pitu
%   satthu_type                  satthu
%   kattu_type                   kattu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
