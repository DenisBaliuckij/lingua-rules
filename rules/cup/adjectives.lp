% rules/cup/adjectives.lp
% Cupeño adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 51181: A Grammar of Cupeño (1998), pages 199, 225, 236, 237
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   a_kulyi_type                 a-kulyi
%   achia_type                   achi’a
%   ayxa_t_type                  ayxa-t
%   ayani_sh_type                ay’ani-sh
%   eleli_sh_type                elel’i-sh
%   hli_sh_type                  hæl’i-sh
%   ingi_sh_type                 ingi-sh
%   ingki_sh_type                ingki-sh
%   kevalyima_l_type             kevaly’ima-l
%   mingi_sh_type                mingi-sh
%   pangi_sh_type                pangi-sh
%   sawe_t_type                  sawe-t
%   tulniki_sh_type              tulniki-sh
%   wava_hi_sh_type              wava$hi-sh
%   yamukwi_sh_type              yamukwi-sh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
