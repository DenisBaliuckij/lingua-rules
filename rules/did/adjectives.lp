% rules/did/adjectives.lp
% Lango adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14808: A Grammar of Lango (1992), pages 94, 96, 99, 100, 102, 103, 108, 109, 111, 113, 115, 121, 122, 125
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   kerj_type                    kerj
%   rac_type                     rac
%   tek_type                     tek
%   ber_type                     ber
%   bor_type                     bor
%   cek_type                     cek
%   dit_type                     dit
%   rac_type_2                   räc
%   txdx_type                    txdx
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
