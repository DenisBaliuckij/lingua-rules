% rules/hoh/adjectives.lp
% Hobyot adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289455: Le hobyot : description grammaticale d’une langue sudarabique moderne (2023), pages 68, 73, 94, 99, 117, 121, 180, 197, 199, 201, 202, 206
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectifs_de_scheme_c1c2ic3_c1ic2ic3_a_g birí — grammar: "Adjectifs de schème C1ɛC2íC3 / C1iC2íC3 à glide final"
%   type_1_c1c2c3un_c1c2c3unt_c1c2c3nn_c1c2c fərḳún, fəθ̣lún, gəhrún, ġəbḳún ... — grammar: "Type 1 : C1ǝC2C3ún / C1ǝC2C3únt / C1ǝC2C3ɛnῑ́n / C1ǝC2C3ɛnī́ntɛ"
%   type_1_c1c2c3un_c1c2c3unt_c1c2c3nn_c1c2c_2 gəbħún, śəbʕún, fǝrħún — grammar: "Type 1 : C1ǝC2C3ún / C1ǝC2C3únt / C1ǝC2C3ɛnῑ́n / C1ǝC2C3ɛnī́ntɛ"
%   groupe_1                     gəʕlɛ́l — grammar: "Groupe 1"
%   groupe_2_autre_scheme        kərkmí — grammar: "Groupe 2 (autre schème)"
%   type_6_mc1c2c3_mc1c2_c3t_mc1c2c3in_mc1c2 mbġáṣ — grammar: "Type 6 : mC1C2ɛ́C3 / mC1C2ɛ́ C3ət / mC1C2ɛ́C3ī́n / mC1C2ɛC3ṓt"
%   groupe_3                     máṭḳ, nfɛ́s, ráħǝḳ, wɛ́dḳ ... — grammar: "Groupe 3"
%   groupe_2_autre_scheme_2      mǝnkɛ́wrǝd — grammar: "Groupe 2 (autre schème)"
%   type_5_mc1c2ec3_mc1c2c3ot_mc1c2oc3_mc1c2 mɛnʕél — grammar: "Type 5 : mɛC1C2éC3 / mɛC1C2ɛC3ót / mɛC1C2óC3 / mɛC1C2óC3tɛ"
%   type_5_mc1c2ec3_mc1c2c3ot_mc1c2oc3_mc1c2_2 mɛġréb — grammar: "Type 5 : mɛC1C2éC3 / mɛC1C2ɛC3ót / mɛC1C2óC3 / mɛC1C2óC3tɛ"
%   type_5_mc1c2ec3_mc1c2c3ot_mc1c2oc3_mc1c2_3 mɛśhér — grammar: "Type 5 : mɛC1C2éC3 / mɛC1C2ɛC3ót / mɛC1C2óC3 / mɛC1C2óC3tɛ"
%   type_5_mc1c2ec3_mc1c2c3ot_mc1c2oc3_mc1c2_4 mɛṣwéb — grammar: "Type 5 : mɛC1C2éC3 / mɛC1C2ɛC3ót / mɛC1C2óC3 / mɛC1C2óC3tɛ"
%   type_6_mc1c2c3_mc1c2_c3t_mc1c2c3in_mc1c2_2 mʕlɛ́z — grammar: "Type 6 : mC1C2ɛ́C3 / mC1C2ɛ́ C3ət / mC1C2ɛ́C3ī́n / mC1C2ɛC3ṓt"
%   adjectifs_de_scheme_c1c2ic3_c1ic2ic3_a_g_2 nḳí — grammar: "Adjectifs de schème C1ɛC2íC3 / C1iC2íC3 à glide final"
%   groupe_2                     xθəmún — grammar: "Groupe 2"
%   groupe_1_2                   ħaydín — grammar: "Groupe 1"
%   type_1                       ħǝrkún — grammar: "Type 1"
%   type_1_c1c2c3un_c1c2c3unt_c1c2c3nn_c1c2c_3 ħǝrḳún — grammar: "Type 1 : C1ǝC2C3ún / C1ǝC2C3únt / C1ǝC2C3ɛnῑ́n / C1ǝC2C3ɛnī́ntɛ"
%   groupe_1_3                   ḳənnún — grammar: "Groupe 1"
%   groupe_2_2                   ḳɛṣír — grammar: "Groupe 2"
%   type_6_mc1c2c3_mc1c2_c3t_mc1c2c3in_mc1c2_3 mḳśɛ́r — grammar: "Type 6 : mC1C2ɛ́C3 / mC1C2ɛ́ C3ət / mC1C2ɛ́C3ī́n / mC1C2ɛC3ṓt"
%   groupe_2_couleur             ħáwwǝr — grammar: "Groupe 2 (couleur)"
%   groupe_2_couleur_2           ʕófǝr — grammar: "Groupe 2 (couleur)"
%   groupe_2_3                   ḳɛṭún — grammar: "Groupe 2"
%   groupe_2_couleur_3           lbún — grammar: "Groupe 2 (couleur)"
%   groupe_2_autre_scheme_3      mɛ́ššrəh — grammar: "Groupe 2 (autre schème)"
%   adjectifs_de_scheme_c1c2ic3_c1ic2ic3_a_g_3 xalí — grammar: "Adjectifs de schème C1ɛC2íC3 / C1iC2íC3 à glide final"
%   groupe_2_4                   xaṭíf — grammar: "Groupe 2"
%   adjectifs_de_scheme_c1c2ic3_c1ic2ic3_a_g_4 ḳəwí — grammar: "Adjectifs de schème C1ɛC2íC3 / C1iC2íC3 à glide final"
%   type_1_c1c2c3un_c1c2c3unt_c1c2c3nn_c1c2c_4 ḳəśʕún — grammar: "Type 1 : C1ǝC2C3ún / C1ǝC2C3únt / C1ǝC2C3ɛnῑ́n / C1ǝC2C3ɛnī́ntɛ"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
