% rules/apc/adjectives.lp
% Levantine Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289547: A Grammar of Jordanian Arabic (n.d.), pages 239
%   doc 626778: Colloquial Arabic (Levantine): The Complete Course for Beginners (2014), pages 120, 150, 151
%   doc 627310: 'Arabiyyat al-Naas (Part Three): An Advanced Course in Arabic (2014), pages 75
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   banafsaji_type               banafsaji
%   beij_type                    beij
%   bunni_type                   bunni
%   burdgaani_type               burdgaani
%   dhahabi_type                 dhahabi
%   faatih_type                  faatiH
%   fiddi_type                   fiDDi
%   ghaamig_type                 ghaamig
%   kuhli_type                   kuHli
%   ramaadi_type                 ramaadi
%   rabi_type                    rābiʕ
%   samaawi_type                 samaawi
%   sabi_type                    sābiʕ
%   sadis_type                   sādis
%   tasi_type                    tāsiʕ
%   xamis_type                   xāmis
%   zahri_type                   zahri
%   asir_type                    ʕāšir
%   talit_type                   ṯāliṯ
%   tamin_type                   ṯāmin
%   tani_type                    ṯāni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
