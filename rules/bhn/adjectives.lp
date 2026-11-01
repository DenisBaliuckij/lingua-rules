% rules/bhn/adjectives.lp
% Bohtan Neo-Aramaic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389757: The Neo-Aramaic Dialect of Bohtan (2009), pages 50, 54, 59, 63, 81, 82, 83, 85, 107, 108
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   hawnona_type                 hawnona, pandona, xalona, šǝntona ...
%   kuma_type                    kuma, smuqa, zura
%   kura_type                    kura, kǝrra
%   mara_type                    mara
%   qmowa_type                   qmowa, xrowa
%   spiqa_type                   spiqa
%   swiya_type                   swiya
%   talila_type                  talila
%   xota_type                    xota
%   karya_type                   karya
%   malya_type                   malya
%   qisa_type                    qiṣa
%   rixa_type                    rixa
%   roba_type                    roba
%   roma_type                    roma
%   sowa_type                    sowa
%   tiqa_type                    tiqa
%   wisa_type                    wiša
%   xlya_type                    xǝlya
%   towa_type                    ṭowa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
