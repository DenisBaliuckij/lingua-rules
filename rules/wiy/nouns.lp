% rules/wiy/nouns.lp
% Wiyot nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 76929: The Wiyot Language (1964), pages 77, 89, 90
%   doc 110130: Wiyot Grammar and Texts (1925), pages 81, 92, 94
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   vala_k_type                  VaLa'k
%   valal_type                   VaLa’L
%   bal_type                     baL
%   bas_type                     bas
%   bidjo_k_type                 bidjo'k
%   dje_pl_type                  dje-pL
%   ga_type                      ga
%   sa_lavas_type                sa'lavas
%   tsa_k_type                   tsa-k
%   waiyits_type                 waiyits
%   wat_ga_i_type                wat-ga'i
%   welin_type                   welin
%   wa_tavat_type                Wa'taVat
%   da_pa_type                   da-'pa
%   gowi_type                    gowi
%   he_wat_type                  he'wat
%   velakw_type                  ve’lakw
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
