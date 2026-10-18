% rules/mkd/nouns.lp
% Macedonian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389015: Macedonian (LW/M 117) (2002), pages 16, 18, 21, 26, 29
%   doc 389016: Macedonian (2005), pages 16, 17, 27, 32, 33
%   doc 389017: A Grammar of the Macedonian Literary Language (1952), pages 51, 54, 56, 60, 91, 94, 106
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   c_est_type                   c#est
%   c_ic_type                    c#ic#
%   grad_type                    grad
%   mesto_type                   mesto
%   seme_type                    seme
%   starec_type                  starec
%   z_ena_type                   z#ena
%   srbin_type                   Srbin
%   den_type                     den
%   klis_e_type                  klis#é
%   kolega_type                  kolega
%   ledi_type                    ledi
%   nivo_type                    nivó
%   pat_type                     pat
%   prsten_type                  prsten
%   srce_type                    srce
%   taksi_type                   taksi
%   taksi_type_2                 taksí
%   uc_enje_type                 uc#enje
%   zab_type                     zab
%   class_type                   веста
%   class_type_2                 град
%   class_type_3                 жена
%   class_type_4                 место
%   class_type_5                 семе
%   class_type_6                 такси
%   class_type_7                 татко
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
