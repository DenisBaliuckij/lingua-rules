% rules/bsk/nouns.lp
% Burushaski nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7345: Srinagar Burushaski: A Descriptive and Comparative Account with Analyzed Texts (2019), pages 163, 164, 168, 177, 180, 181, 182, 183, 184
%   doc 7347: The Burushaski Language: Volume I Introduction and Grammar (1935), pages 191, 308, 319, 324, 333, 495
%   doc 103892: A Reference Grammar of Eastern Burushaski (2012), pages 148, 156, 159, 160, 162, 164, 171, 179
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   asqur_type                   asqur
%   bus_type                     buš
%   chin_type                    c̣hin
%   chis_type                    c̣hiṣ
%   dasin_type                   dasin
%   du_type                      du
%   gus_type                     gus
%   hir_type                     hir
%   kitaab_type                  kitaab
%   mal_type                     mal
%   muk_type                     muk
%   phic_type                    phic̣
%   phin_type                    phin
%   phul_type                    phul
%   silezin_type                 sileẓin
%   sindis_type                  sindiṣ
%   trap_type                    trap
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
