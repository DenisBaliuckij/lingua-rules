% rules/hau/nouns.lp
% Hausa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296296: Hausa Grammatical Sketch (2012), pages 12, 13, 18, 21, 24, 25, 26, 29, 33
%   doc 820278: An Outline of Hausa Grammar (1947), pages 26, 47
%   doc 820306: The Hausa Language: A Descriptive Grammar (1982), pages 50, 62
%   doc 855841: Hausa Grammar (n.d.), pages 30, 31, 32, 36, 46, 51, 52, 78, 79, 80, 81, 90, 91
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   aki_type                     ʤàːkiː
%   ooc_ii                       ?iddd — grammar: "-ooC- -ii"
%   words_ending_in_i_type_1     aboki — grammar: "words ending in i (type 1)"
%   words_ending_in_a_type_1     alura — grammar: "words ending in a (type 1)"
%   ooc_ii_2                     bakway — grammar: "-ooC- -ii"
%   bawa_type                    bawa
%   aac_uu                       beerad — grammar: "-aaC- -uu"
%   biri_type                    biri
%   aac_ee                       biril — grammar: "-aaC- -ee"
%   words_ending_in_a_type_5     bisa — grammar: "words ending in a (type 5)"
%   ooc_ii_3                     biyal — grammar: "-ooC- -ii"
%   ooc_ii_4                     biyuu — grammar: "-ooC- -ii"
%   ayc                          busiyaa — grammar: "-ayC-"
%   ooc_ii_5                     d — grammar: "-ooC- -ii"
%   words_ending_in_i_type_3     daki — grammar: "words ending in i (type 3)"
%   doki_type                    doki
%   words_ending_in_a_type_1_2   dorina — grammar: "words ending in a (type 1)"
%   aac_ee_2                     dunyaa — grammar: "-aaC- -ee"
%   ooc_ii_6                     fudfuu — grammar: "-ooC- -ii"
%   words_ending_in_a_type_3     fuska — grammar: "words ending in a (type 3)"
%   aac_ee_3                     gaawaa — grammar: "-aaC- -ee"
%   words_ending_in_a_type_4     ganga — grammar: "words ending in a (type 4)"
%   gato_type                    gato
%   acc_ii                       gddgee — grammar: "-aCC- -ii"
%   words_ending_in_a_type_5_2   gida — grammar: "words ending in a (type 5)"
%   words_ending_in_a_type_2     giwa — grammar: "words ending in a (type 2)"
%   acc_ee                       giydd — grammar: "-aCC- -ee"
%   words_ending_in_a_type_2_2   gona — grammar: "words ending in a (type 2)"
%   ooc_ii_7                     goomd — grammar: "-ooC- -ii"
%   acc_uu                       habdd — grammar: "-aCC- -uu"
%   words_ending_in_a_type_1_3   hankaka — grammar: "words ending in a (type 1)"
%   hannu_type                   hannu
%   ido_type                     ido
%   iri_type                     iri
%   jaki_type                    jaki
%   kafo_type                    kafo
%   kai_type                     kai
%   words_ending_in_a_type_2_3   kaka — grammar: "words ending in a (type 2)"
%   words_ending_in_o_type_2     kango — grammar: "words ending in o (type 2)"
%   words_ending_in_a_type_5_3   kasa — grammar: "words ending in a (type 5)"
%   kaya_type                    kaya
%   kaza_type                    kaza
%   words_ending_in_i_type_3_2   kif — grammar: "words ending in i (type 3)"
%   words_ending_in_a_type_5_4   kuda — grammar: "words ending in a (type 5)"
%   words_ending_in_a_type_2_4   kwana — grammar: "words ending in a (type 2)"
%   mache_type                   mache
%   words_ending_in_i_type_1_2   machiji — grammar: "words ending in i (type 1)"
%   acc_ay                       madaraa — grammar: "-aCC- -ay"
%   words_ending_in_o_type_1     makafo — grammar: "words ending in o (type 1)"
%   manzo_type                   manzo
%   mutu_type                    mutu
%   ooc_ii_8                     muujiyddA — grammar: "-ooC- -ii"
%   raggo_type                   raggo
%   words_ending_in_i_type_1_3   rakumi — grammar: "words ending in i (type 1)"
%   words_ending_in_a_type_4_2   riga — grammar: "words ending in a (type 4)"
%   ooc_ii_9                     s'abgdd — grammar: "-ooC- -ii"
%   ooc_ii_10                    sabdfin — grammar: "-ooC- -ii"
%   words_ending_in_a_type_4_3   sanda — grammar: "words ending in a (type 4)"
%   sariki_type                  sariki
%   ooc_ii_11                    sdttin — grammar: "-ooC- -ii"
%   sirdi_type                   sirdi
%   acc_ay_2                     sullee — grammar: "-aCC- -ay"
%   words_ending_in_i_type_1_4   takalmi — grammar: "words ending in i (type 1)"
%   ooc_ii_12                    takwds — grammar: "-ooC- -ii"
%   ooc_ii_13                    tard — grammar: "-ooC- -ii"
%   taru_type                    taru
%   ooc_ii_14                    tdla — grammar: "-ooC- -ii"
%   tsofo_type                   tsofo
%   words_ending_in_a_type_3_2   tufa — grammar: "words ending in a (type 3)"
%   tumkiya_type                 tumkiya
%   ayc_2                        tuujee — grammar: "-ayC-"
%   words_ending_in_a_type_2_5   uba — grammar: "words ending in a (type 2)"
%   words_ending_in_o_type_1_2   yaro — grammar: "words ending in o (type 1)"
%   words_ending_in_a_type_3_3   yatsa — grammar: "words ending in a (type 3)"
%   acc_uu_2                     zdree — grammar: "-aCC- -uu"
%   igi_type                     ʤiɽgiː
% Irregular (listed in data/nouns.exceptions.tsv): gari, haske, kare
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
