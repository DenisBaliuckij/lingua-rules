% rules/muz/verbs.lp
% Mursi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 163: A grammar of Mursi, a Nilo-Saharan language (2020), pages 151, 280, 281, 282, 283, 285, 287, 289, 295, 297, 302, 303, 305, 334, 377, 496, 501, 576
%   doc 894928: Mursi Grammar (n.d.), pages 6, 9
%   doc 942373: A Grammar of Mursi: A Nilo-Saharan Language of Ethiopia (2021), pages 129, 257, 258, 259, 260, 262, 263, 264, 266, 267, 269, 271, 273, 278, 279, 309, 310, 316, 317, 320, 323, 471, 477, 553
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   iw_type                      iw
%   lami_type                    lámí
%   negative_existential_verb    níŋ — grammar: "negative existential verb"
%   negative_existential_verb_2  níŋɛ̀ — grammar: "negative existential verb"
%   og_type                      og
%   iw_type_2                    íw
%   og_type_2                    óg
%   ak_type                      ɓak
%   ik_type                      ɓik
%   ak_type_2                    ɓák
%   lhn_type                     ɛ̀lɛ̀hɛ̀n
%   dasi_type                    dásí
%   kun_type                     kún
%   muus_type                    múɲús
%   ba_kio_type                  ba:kio
%   dug_type                     dug
%   matio_type                   matio
%   sen_type                     sén
%   ag_type                      ɗág
%   sigio_type                   sigio
%   ai_type                      àìɲ
% Irregular (listed in data/verbs.exceptions.tsv): gáj, màt, áʤ, ésé
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
