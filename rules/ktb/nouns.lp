% rules/ktb/nouns.lp
% Kambaata nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38440: Das K'abeena: Deskriptive Grammatik einer hochlandostkuschitischen Sprache (1985), pages 65, 66, 100, 101, 103, 123, 124, 125, 126, 127, 130, 142, 143, 164, 212, 217, 234, 243
%   doc 69380: A Grammar of Kambaata (Ethiopia) Part 1: Phonology, Nominal Morphology and Non-verbal Pred (2005), pages 172, 222, 229, 241, 281, 282, 314, 321, 383, 384, 409, 424, 447
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   flexionsklasse_7             afoo — grammar: "Flexionsklasse 7"
%   flexionsklasse_3             eeze, geet — grammar: "Flexionsklasse 3"
%   flexionsklasse_7_2           zoobboo — grammar: "Flexionsklasse 7"
%   transnumeral                 Zumaa — grammar: "Transnumeral"
%   flexionsklasse_8             bokku — grammar: "Flexionsklasse 8"
%   flexionsklasse_9             c’aat — grammar: "Flexionsklasse 9"
%   transnumeral_2               eloo — grammar: "Transnumeral"
%   flexionsklasse_6             kurkuudo — grammar: "Flexionsklasse 6"
%   flexionsklasse_4             Saa'iree — grammar: "Flexionsklasse 4"
%   flexionsklasse_1_ausnahme    aabba — grammar: "Flexionsklasse 1 (Ausnahme)"
%   flexionsklasse_5             ali — grammar: "Flexionsklasse 5"
%   flexionsklasse_1             anja — grammar: "Flexionsklasse 1"
%   flexionsklasse_1_2           baa — grammar: "Flexionsklasse 1"
%   flexionsklasse_2             barraa — grammar: "Flexionsklasse 2"
%   flexionsklasse_8_2           ifficcu — grammar: "Flexionsklasse 8"
%   flexionsklasse_4_2           k'aamee — grammar: "Flexionsklasse 4"
%   flexionsklasse_5_2           mini — grammar: "Flexionsklasse 5"
%   flexionsklasse_2_2           samaa — grammar: "Flexionsklasse 2"
%   flexionsklasse_1_3           sitira — grammar: "Flexionsklasse 1"
%   flexionsklasse_1_4           waa — grammar: "Flexionsklasse 1"
%   declension_m3                xorosh-ú — grammar: "declension M3"
%   zakku_type                   zakkú
%   flexionsklasse_4b            Sukuru — grammar: "Flexionsklasse 4b"
%   flexionsklasse_3_2           aganno — grammar: "Flexionsklasse 3"
%   flexionsklasse_1_5           aguda — grammar: "Flexionsklasse 1"
%   flexionsklasse_3_3           arabo — grammar: "Flexionsklasse 3"
%   flexionsklasse_1_6           budala — grammar: "Flexionsklasse 1"
%   flexionsklasse_11            cibee? — grammar: "Flexionsklasse 11"
%   flexionsklasse_4_3           c’aaltu, ilfu — grammar: "Flexionsklasse 4"
%   flexionsklasse_13            c’iwut® — grammar: "Flexionsklasse 13"
%   flexionsklasse_5a            daliil — grammar: "Flexionsklasse 5a"
%   flexionsklasse_13_2          diglalu — grammar: "Flexionsklasse 13"
%   flexionsklasse_6a            ebalo — grammar: "Flexionsklasse 6a"
%   emphatic_reflexive_noun      gagá — grammar: "emphatic reflexive noun"
%   flexionsklasse_3_4           galato — grammar: "Flexionsklasse 3"
%   flexionsklasse_9_2           gürat — grammar: "Flexionsklasse 9"
%   flexionsklasse_2_3           haadi — grammar: "Flexionsklasse 2"
%   flexionsklasse_5a_2          hadiir, umar — grammar: "Flexionsklasse 5a"
%   flexionsklasse_3_5           heetile — grammar: "Flexionsklasse 3"
%   flexionsklasse_9_3           lokkat! — grammar: "Flexionsklasse 9"
%   flexionsklasse_6b            maat — grammar: "Flexionsklasse 6b"
%   flexionsklasse_2_4           mahdi — grammar: "Flexionsklasse 2"
%   flexionsklasse_2_5           malabe — grammar: "Flexionsklasse 2"
%   flexionsklasse_10            masSaat! — grammar: "Flexionsklasse 10"
%   flexionsklasse_6a_2          micco, oobbo — grammar: "Flexionsklasse 6a"
%   flexionsklasse_12            mulit? — grammar: "Flexionsklasse 12"
%   flexionsklasse_4_4           mulu — grammar: "Flexionsklasse 4"
%   flexionsklasse_3_6           mutt'e — grammar: "Flexionsklasse 3"
%   flexionsklasse_1_7           naflisa — grammar: "Flexionsklasse 1"
%   flexionsklasse_5b            nagaas — grammar: "Flexionsklasse 5b"
%   flexionsklasse_10_2          niggaat! — grammar: "Flexionsklasse 10"
%   flexionsklasse_5a_3          rabi — grammar: "Flexionsklasse 5a"
%   flexionsklasse_3_7           riibaato — grammar: "Flexionsklasse 3"
%   flexionsklasse_9_4           saat — grammar: "Flexionsklasse 9"
%   flexionsklasse_1_8           safiina — grammar: "Flexionsklasse 1"
%   flexionsklasse_11_2          soottee — grammar: "Flexionsklasse 11"
%   flexionsklasse_6b_2          yago — grammar: "Flexionsklasse 6b"
%   flexionsklasse_1_9           zulfa — grammar: "Flexionsklasse 1"
%   aazi_type                    aazí
%   flexionsklasse_10_3          awliyaat! — grammar: "Flexionsklasse 10"
%   flexionsklasse_1_10          aziiza — grammar: "Flexionsklasse 1"
%   flexionsklasse_2_6           emmeete — grammar: "Flexionsklasse 2"
%   flexionsklasse_4_5           haakimee — grammar: "Flexionsklasse 4"
%   flexionsklasse_12_2          kokki? — grammar: "Flexionsklasse 12"
%   flexionsklasse_13_3          laalut — grammar: "Flexionsklasse 13"
%   flexionsklasse_4a            raahimu — grammar: "Flexionsklasse 4a"
%   flexionsklasse_12_3          weesit — grammar: "Flexionsklasse 12"
%   declension_f3a               xag-ú-ta — grammar: "declension F3a"
%   masculine_proper_nouns       Baafá — grammar: "masculine proper nouns"
%   masculine_proper_nouns_2     Siggisó — grammar: "masculine proper nouns"
%   masculine_proper_nouns_3     Sugeebó — grammar: "masculine proper nouns"
%   beettu_type                  beettu
%   beetu_type                   béetu
%   flexionsklasse_8_3           mancu — grammar: "Flexionsklasse 8"
%   flexionsklasse_2_7           meeccabaa — grammar: "Flexionsklasse 2"
%   flexionsklasse_1_11          rufa — grammar: "Flexionsklasse 1"
%   flexionsklasse_13_4          beetu — grammar: "Flexionsklasse 13"
%   ca_wu_type                   c’a-wu
%   gruppe_b                     c’uulir — grammar: "Gruppe B"
%   gruppe_b_2                   c’uullat — grammar: "Gruppe B"
%   gruppe_a                     c’uulu, k’ariccu, maganu — grammar: "Gruppe A"
%   gruppe_b_3                   ezeeccut, hardaa’nut, mancut — grammar: "Gruppe B"
%   gruppe_b_4                   haftaa’nur® — grammar: "Gruppe B"
%   flexionsklasse_11_3          hak'ee — grammar: "Flexionsklasse 11"
%   transnumeral_3               hakk’it — grammar: "Transnumeral"
%   flexionsklasse_9_5           lokka — grammar: "Flexionsklasse 9"
%   transnumeral_4               meentu — grammar: "Transnumeral"
%   flexionsklasse_10_4          niggaa — grammar: "Flexionsklasse 10"
%   flexionsklasse_12_4          zinni — grammar: "Flexionsklasse 12"
%   flexionsklasse_11_4          zir’lee — grammar: "Flexionsklasse 11"
%   zurumaa_type                 zuru’maa
%   flexionsklasse_9_6           °ootat — grammar: "Flexionsklasse 9"
%   flexionsklasse_10_5          Pott'onnaat — grammar: "Flexionsklasse 10"
%   transnumeral_5               adabaa — grammar: "Transnumeral"
%   transnumeral_6               adanit — grammar: "Transnumeral"
%   transnumeral_7               agaanu — grammar: "Transnumeral"
%   agana_type                   agana
%   transnumeral_8               amaara — grammar: "Transnumeral"
%   transnumeral_9               araba — grammar: "Transnumeral"
%   transnumeral_10              arru — grammar: "Transnumeral"
%   awoo_type                    awoo
%   transnumeral_11              baalik’i — grammar: "Transnumeral"
%   transnumeral_12              bak’ulat — grammar: "Transnumeral"
%   bokk_type                    bokk
%   flexionsklasse_8_4           bokkü — grammar: "Flexionsklasse 8"
%   flexionsklasse_8_5           gerengeeru — grammar: "Flexionsklasse 8"
%   transnumeral_13              goojjit — grammar: "Transnumeral"
%   gota_type                    gota
%   habura_type                  habura
%   transnumeral_14              hadiyyat — grammar: "Transnumeral"
%   hambula_type                 hambula
%   transnumeral_15              harrit® — grammar: "Transnumeral"
%   flexionsklasse_9_7           heeccat — grammar: "Flexionsklasse 9"
%   transnumeral_16              hoolat — grammar: "Transnumeral"
%   flexionsklasse_13_5          kukwleeccut — grammar: "Flexionsklasse 13"
%   laalu_t_type                 láalu-t
%   transnumeral_17              mikk’aat — grammar: "Transnumeral"
%   flexionsklasse_3_8           sa'miti — grammar: "Flexionsklasse 3"
%   transnumeral_18              sabiye — grammar: "Transnumeral"
%   flexionsklasse_1_12          suwaank'a — grammar: "Flexionsklasse 1"
%   oobbo_type                   °oobbo
% Irregular (listed in data/nouns.exceptions.tsv): manna
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
