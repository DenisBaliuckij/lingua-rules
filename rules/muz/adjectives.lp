% rules/muz/adjectives.lp
% Mursi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 163: A grammar of Mursi, a Nilo-Saharan language (2020), pages 151, 280, 281, 282, 283, 285, 287, 289, 295, 297, 302, 303, 305, 334, 377, 496, 501, 576
%   doc 894928: Mursi Grammar (n.d.), pages 6, 9
%   doc 942373: A Grammar of Mursi: A Nilo-Saharan Language of Ethiopia (2021), pages 129, 257, 258, 259, 260, 262, 263, 264, 266, 267, 269, 271, 273, 278, 279, 309, 310, 316, 317, 320, 323, 471, 477, 553
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gli_type                     gɔ́lɔ́ɲí
%   krri_type                    kɔ̀rrɔ̀ì
%   mki_type                     mɔ̀kɔ̀ɲì
%   c_a_type                     ɓɔ́č-á
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
