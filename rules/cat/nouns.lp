% rules/cat/nouns.lp
% Valencian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68656: Gramática de la lengua catalana (1915), pages 390, 408, 449, 455, 467, 469, 472, 480
%   doc 93074: Nova gramàtica de la llengua valenciana (2016), pages 262, 409, 415, 443, 448, 467, 469, 471, 473, 475, 477, 479, 481, 483, 485, 487, 489, 491, 493
%   doc 388264: Catalan Grammar (n.d.), pages 16, 17, 18, 19, 24, 25, 26, 27, 29, 30, 35, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54
%   doc 389605: Gramàtica normativa valenciana (2006), pages 250, 251, 252, 253, 265, 266, 267, 268, 269, 270, 272, 274, 276, 277, 278, 279, 280, 281, 282, 283, 284, 286, 287, 288, 289, 290, 291, 292, 293
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   orthographic_particularities aigua — grammar: "Orthographic Particularities"
%   orthographic_particularities_2 amiga — grammar: "Orthographic Particularities"
%   orthographic_particularities_3 boig — grammar: "Orthographic Particularities"
%   masculines_with_unpronounceable_plural_i braç — grammar: "Masculines with "unpronounceable" plural in -s"
%   nouns_in_stressed_vowel_a_o_o_u_i_e_e capità — grammar: "Nouns in stressed vowel (à ó ò ú í é è)"
%   masculines_with_unpronounceable_plural_i_2 despatx — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_3 disc — grammar: "Masculines with "unpronounceable" plural in -s"
%   nouns_in_a                   filla — grammar: "Nouns in -a"
%   nouns_in_a_2                 gata — grammar: "Nouns in -a"
%   masculines_with_unpronounceable_plural_i_4 gest — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_5 lleig — grammar: "Masculines with "unpronounceable" plural in -s"
%   nouns_in_stressed_vowel_a_o_o_u_i_e_e_2 missió — grammar: "Nouns in stressed vowel (à ó ò ú í é è)"
%   nouns_in_stressed_vowel_a_o_o_u_i_e_e_3 nació — grammar: "Nouns in stressed vowel (à ó ò ú í é è)"
%   masculines_with_unpronounceable_plural_i_6 nas — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_7 passeig — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_8 peix — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_9 pis — grammar: "Masculines with "unpronounceable" plural in -s"
%   orthographic_particularities_4 pluja — grammar: "Orthographic Particularities"
%   nouns_in_a_3                 poeta — grammar: "Nouns in -a"
%   orthographic_particularities_5 raça — grammar: "Orthographic Particularities"
%   masculines_with_unpronounceable_plural_i_10 sufix — grammar: "Masculines with "unpronounceable" plural in -s"
%   masculines_with_unpronounceable_plural_i_11 text — grammar: "Masculines with "unpronounceable" plural in -s"
%   orthographic_particularities_6 vaca — grammar: "Orthographic Particularities"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
