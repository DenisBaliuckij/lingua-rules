% rules/gla/nouns.lp
% Scottish Gaelic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79404: Forbes's Double Grammar of English and Gaelic / Gramar Dùbailt Beurla 'us Gàelig (1843), pages 52, 64, 67, 71, 72, 76, 79, 82, 83, 87, 88, 89, 97, 103, 124, 125, 140, 143, 144, 150, 151
%   doc 388654: Scottish Gaelic (2010), pages 27, 28, 29, 31, 32, 35, 36, 39, 43, 44
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   morair_type                  morair
%   solus_type                   solus
%   suist_type                   suist, Ceit
%   corran_type                  corran
%   poit_type                    poit
%   tigh_type                    tigh
%   class_1_nouns_c_c_ending     bròg — grammar: "Class 1 nouns (C: C´ ± ending)"
%   cluas_type                   cluas
%   class_2_nouns_c_c_ending     bràthair — grammar: "Class 2 nouns (C´: C ± ending)"
%   class_5b                     cnò — grammar: "Class 5B"
%   class_4_nouns_c_c_ending     cìobair — grammar: "Class 4 nouns (C´ : C´ ± ending)"
%   class_5a                     còta — grammar: "Class 5A"
%   class_1_nouns_c_c_ending_2   each — grammar: "Class 1 nouns (C: C´ ± ending)"
%   class_5c                     gobha — grammar: "Class 5C"
%   class_3_nouns_c_c_ending     guth, rud — grammar: "Class 3 nouns (C : C ± ending)"
%   class_2_nouns_c_c_ending_2   iuchair — grammar: "Class 2 nouns (C´: C ± ending)"
%   class_3_nouns_c_c_ending_2   luch — grammar: "Class 3 nouns (C : C ± ending)"
%   class_4_nouns_c_c_ending_2   prìs — grammar: "Class 4 nouns (C´ : C´ ± ending)"
%   class_2_nouns_c_c_ending_3   sùil — grammar: "Class 2 nouns (C´: C ± ending)"
%   class_1_nouns_c_c_ending_3   ugh — grammar: "Class 1 nouns (C: C´ ± ending)"
%   pasgadh_type                 Pasgadh
%   pasgaidhean_type             Pasgaidhean
%   peadar_type                  Peadar
%   nouns_of_one_syllable_sounded_by_a_o_or Car — grammar: "Nouns of one syllable sounded by a, o, or u"
%   nouns_in_io_dropping_o_in_the_genitive Criosd — grammar: "Nouns in io dropping o in the genitive"
%   nouns_of_one_syllable_sounded_by_ia_or_e Dia — grammar: "Nouns of one syllable sounded by ia or eu or u"
%   nouns_of_one_syllable_sounded_by_ia_or_e_2 Eug — grammar: "Nouns of one syllable sounded by ia or eu or u"
%   nouns_of_one_syllable_sounded_by_ia_or_e_3 Eun — grammar: "Nouns of one syllable sounded by ia or eu or u"
%   nouns_of_one_syllable_ending_in_dh_gh_th Gàt — grammar: "Nouns of one syllable ending in dh, gh, th, um, n, rr, s, or t"
%   nouns_in_io_dropping_o_in_the_genitive_2 Lion — grammar: "Nouns in io dropping o in the genitive"
%   nouns_of_one_syllable_sounded_by_ia_or_e_4 Meur — grammar: "Nouns of one syllable sounded by ia or eu or u"
%   nouns_of_one_syllable_sounded_by_ia_or_e_5 Sgèul — grammar: "Nouns of one syllable sounded by ia or eu or u"
%   nouns_in_io_dropping_o_in_the_genitive_3 Siol — grammar: "Nouns in io dropping o in the genitive"
%   nouns_in_io_dropping_o_in_the_genitive_4 Sion — grammar: "Nouns in io dropping o in the genitive"
% Irregular (listed in data/nouns.exceptions.tsv): Abhainn, Aghainn, Banais, Brigh, Bruidhinn, Cliamhuinn, Colluinn, Cridhe, Càraid, Dinneir, Disinn, Duine ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
