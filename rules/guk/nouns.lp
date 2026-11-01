% rules/guk/nouns.lp
% Gumuz nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296277: A Grammar of Northern and Southern Gumuz (2012), pages 136
%   doc 296322: A grammar of Gaahmg: A Nilo-Saharan Language of Sudan (2011), pages 53, 125, 157, 186, 198, 202, 217, 229, 230, 232, 233, 237, 240, 252, 257, 270, 271, 272, 273
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dii_type                     d̪ìì
%   mii_type                     mīī
%   kuduurii_type                kūd̪úúrīī
%   sul_type                     súlə̄
%   t_type                       tɔ́ɔ́
%   tndas_type                   tɛ̄nd̪ás
%   uui_type                     ɲūūì
%   kuufu_type                   kúúfú
%   pur_type                     púr
%   waayaa_type                  wááyáá
%   i_id_type                    ɟíŋ-íd̪
%   consonant_final_nouns        bāár — grammar: "consonant-final nouns"
%   cld_type                     cɛ́ld̪
%   grmu_d_type                  gə̀rmù-d̪
%   kamalgg_type                 kàmàlɔ̀gg
%   consonant_final_nouns_2      kààm — grammar: "consonant-final nouns"
%   consonant_final_nouns_3      kɔ̄ðɛ̀l — grammar: "consonant-final nouns"
%   mraa_type                    mɔ̀rāā
%   waar_type                    wáár
%   wiri_type                    wírì
%   aggaar_type                  àggáár
%   consonant_final_nouns_4      ɟɔ́rgāāl — grammar: "consonant-final nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
