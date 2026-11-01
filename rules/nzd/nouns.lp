% rules/nzd/nouns.lp
% Nzadi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28904: A Grammar of Nzadi [B.865]: A Bantu Language of the Democratic Republic of the Congo (2011), pages 72, 75
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   dz_type                      dz"‡`
%   i_a                          ibaa — grammar: "i- / a-"
%   i_a_2                        ibúl — grammar: "i- / a-"
%   i_a_3                        idzîn — grammar: "i- / a-"
%   i_a_4                        ikç&N — grammar: "i- / a-"
%   i_a_5                        ikç@çr@ — grammar: "i- / a-"
%   i_a_6                        ikìé — grammar: "i- / a-"
%   i_a_7                        imE@mE — grammar: "i- / a-"
%   i_a_8                        imç@N — grammar: "i- / a-"
%   i_a_9                        ipa&p — grammar: "i- / a-"
%   i_a_10                       itâr — grammar: "i- / a-"
%   i_a_11                       iyó — grammar: "i- / a-"
%   i_a_12                       iziba — grammar: "i- / a-"
%   c7_8                         kisâl — grammar: "7/8"
%   c7_8_2                       kífu — grammar: "7/8"
%   c5_6                         likE@mba — grammar: "5/6"
%   c3_4                         musumbwâ — grammar: "3/4"
%   c1_2                         mwa&àn — grammar: "1/2"
%   on_en                        oNgêr — grammar: "oN- / eN-"
%   on_en_2                      oNkâp — grammar: "oN- / eN-"
%   o_e                          okal — grammar: "o- / e-"
%   o_e_2                        okpá — grammar: "o- / e-"
%   o_e_3                        okwâ — grammar: "o- / e-"
%   o_e_4                        okwúm — grammar: "o- / e-"
%   on_en_3                      ombvul — grammar: "oN- / eN-"
%   on_en_4                      ompfí — grammar: "oN- / eN-"
%   on_en_5                      ondyE@E@ — grammar: "oN- / eN-"
%   on_en_6                      ondûk — grammar: "oN- / eN-"
%   on_en_7                      ontsûN — grammar: "oN- / eN-"
%   o_e_5                        osEE — grammar: "o- / e-"
%   o_e_6                        osìsá — grammar: "o- / e-"
%   o_e_7                        osó — grammar: "o- / e-"
%   o_e_8                        otáàm — grammar: "o- / e-"
%   o_e_9                        oté — grammar: "o- / e-"
%   o_e_10                       oyáám — grammar: "o- / e-"
%   c14_6                        wa&àr — grammar: "14/6"
%   c6                           wàá — grammar: "?/6"
%   on_en_8                      çNkàán — grammar: "oN- / eN-"
%   o_e_11                       çtçk — grammar: "o- / e-"
% Irregular (listed in data/nouns.exceptions.tsv): dzu&m$, intúntu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
