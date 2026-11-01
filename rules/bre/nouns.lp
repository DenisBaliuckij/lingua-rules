% rules/bre/nouns.lp
% Breton nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389307: A Grammar of Modern Breton (1986), pages 60, 147, 149, 151, 156, 157, 160, 161, 181, 186
%   doc 389308: Grammaire du breton contemporain (1997), pages 32, 36, 43, 44, 45, 54, 114, 197, 198, 205
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bleiichenn_type              bleîichenn
%   delienn_type                 delienn
%   drask_type                   drask
%   draskig_type                 draskig
%   filipig_type                 filipig
%   fronell_type                 fronell
%   geot_type                    geot
%   geotenn_type                 geotenn
%   gwazhienn_type               gwazhïenn
%   istr_type                    istr
%   kar_type                     kar
%   koad_type                    koad
%   loer_type                    loer
%   maneg_type                   maneg
%   meskl_type                   meskl
%   muzell_type                  muzell
%   paotr_type                   paotr
%   park_type                    park
%   pesk_type                    pesk
%   tud_type                     tud
% Irregular (listed in data/nouns.exceptions.tsv): den, ki
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
