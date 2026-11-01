% rules/akk/nouns.lp
% Akkadian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93127: A Grammar of Akkadian (2011), pages 95, 196, 224, 247, 293, 295, 364, 398, 399, 400, 401, 416, 430, 431, 432, 450, 463, 476, 490, 500, 658, 659, 660, 690
%   doc 818163: The Akkadian Verb and Its Semitic Background (2010), pages 156, 201, 203, 205, 325, 332, 336, 379, 440, 512, 565
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   final_weak_nouns_in_a        adûm — grammar: "Final-weak Nouns IN -a"
%   basic_declension             arratum — grammar: "Basic Declension"
%   basic_declension_2           arrum, ilum — grammar: "Basic Declension"
%   basic_declension_3           be¯ltum — grammar: "Basic Declension"
%   final_weak_nouns_in_i        bårûm — grammar: "Final-weak Nouns IN -i/¥"
%   final_weak_nouns_in_u_e      ikûm — grammar: "Final-weak Nouns IN -u/Ë"
%   basic_declension_4           iltum — grammar: "Basic Declension"
%   basic_declension_5           nårum — grammar: "Basic Declension"
%   final_weak_nouns_in_a_2      rubûm — grammar: "Final-weak Nouns IN -å"
%   sarru_type                   šarru
%   base_in_vc_abum_a_um         abum — grammar: "base in -VC, abum, a um"
%   base_in_c1c1_2_syllable_other ekallum — grammar: "base in -C1C1, 2-syllable,other"
%   base_in_c1c1_1_syllable      libbum — grammar: "base in -C1C1, 1-syllable"
%   base_in_vc_2_syllable        nakrum — grammar: "base in -VC, 2-syllable"
%   dual                         uznån — grammar: "DUAL"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
