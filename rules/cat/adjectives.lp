% rules/cat/adjectives.lp
% Valencian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68656: Gramática de la lengua catalana (1915), pages 390, 408, 449, 455, 467, 469, 472, 480
%   doc 93074: Nova gramàtica de la llengua valenciana (2016), pages 262, 409, 415, 443, 448, 467, 469, 471, 473, 475, 477, 479, 481, 483, 485, 487, 489, 491, 493
%   doc 388264: Catalan Grammar (n.d.), pages 16, 17, 18, 19, 24, 25, 26, 27, 29, 30, 35, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54
%   doc 389605: Gramàtica normativa valenciana (2006), pages 250, 251, 252, 253, 265, 266, 267, 268, 269, 270, 272, 274, 276, 277, 278, 279, 280, 281, 282, 283, 284, 286, 287, 288, 289, 290, 291, 292, 293
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   demonstrative_adjectives_remote_objects aqueix — grammar: "demonstrative adjectives (remote objects)"
%   demonstrative_adjectives_remote_objects_2 aquell — grammar: "demonstrative adjectives (remote objects)"
%   demonstrative_adjectives_near_objects aquest — grammar: "demonstrative adjectives (near objects)"
%   possessive_adjectives_1st_person_singula meu — grammar: "possessive adjectives (1st person singular)"
%   interrogative_adjectives     quin — grammar: "interrogative adjectives"
%   possessive_adjectives_3rd_person_singula seu — grammar: "possessive adjectives (3rd person singular)"
%   possessive_adjectives_2nd_person_singula teu — grammar: "possessive adjectives (2nd person singular)"
%   adjectives_of_two_forms      baix — grammar: "Adjectives of two forms"
%   blau_type                    blau
%   boig_type                    boig
%   catala_type                  català
%   cec_type                     cec
%   comu_type                    comú
%   adjectives_in_e              correcte — grammar: "Adjectives in -e"
%   adjectives_in_eu             europeu — grammar: "Adjectives in -eu"
%   adjectives_of_two_forms_2    fondo — grammar: "Adjectives of two forms"
%   gras_type                    gras
%   adjectives_in_eu_2           jueu — grammar: "Adjectives in -eu"
%   lleig_type                   lleig
%   llis_type                    llis
%   adjectives_of_two_forms_3    maco — grammar: "Adjectives of two forms"
%   possessive_adjectives_1st_person_plural nostre — grammar: "possessive adjectives (1st person plural)"
%   nou_type                     nou
%   oblic_type                   oblic
%   adjectives_of_two_forms_4    petit — grammar: "Adjectives of two forms"
%   adjectives_in_e_2            pobre — grammar: "Adjectives in -e"
%   adjectives_of_two_forms_5    sec — grammar: "Adjectives of two forms"
%   adjectives_of_two_forms_6    trist — grammar: "Adjectives of two forms"
%   adjectives_of_two_forms_7    vell — grammar: "Adjectives of two forms"
%   adjectives_of_two_forms_8    verd — grammar: "Adjectives of two forms"
%   possessive_adjectives_2nd_person_plural vostre — grammar: "possessive adjectives (2nd person plural)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
