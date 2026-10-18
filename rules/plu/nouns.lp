% rules/plu/nouns.lp
% Palikur nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389632: Awna parikwaki : introduction à la langue palikur de Guyane et de l'Amapa (2003), pages 67, 79, 101
%   doc 389633: Eléments de grammaire palikur (2001), pages 20
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   ahempak_type                 ahempak
%   anmap_type                   anmap
%   annu_type                    annu
%   aybu_type                    aybu
%   buk_type                     buk
%   dugas_type                   dugas
%   ig_type                      ig
%   ih_type                      ih
%   kamkayh_type                 kamkayh
%   kig_type                     kig
%   kivara_type                  kivara
%   mew_type                     mew
%   nag_type                     nag
%   pey_type                     pey
%   taybi_type                   taybi
%   w_type                       w
%   wan_type                     wan
%   wetri_type                   wetri
%   wak_type                     wàk
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
