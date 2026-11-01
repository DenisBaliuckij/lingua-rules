% rules/nay/adjectives.lp
% Narrinyeri adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104855: Grammar of the Narrinyeri Tribe of Australian Aborigines (1880), pages 11, 12, 13, 23
%   doc 104858: Narrinyeri Grammar (n.d.), pages 8
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   nunkeri_type                 nunkeri
%   ngruwar_type                 ngruwar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
