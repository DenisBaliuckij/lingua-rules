% rules/afb/nouns.lp
% Emirati Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44421: Emirati Arabic: A Comprehensive Grammar (2024), pages 72, 73, 110, 183
%   doc 44425: A Short Reference Grammar of Gulf Arabic (n.d.), pages 34, 36, 40, 41, 43, 44, 59, 60, 63, 64, 72, 85, 86, 87
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   alf_type                     alf
%   madrasa_type                 madrasa
%   malyoon_type                 malyoon
%   fa9aalil                     Habaara — grammar: "fa9aalil"
%   diminutive_nouns             Hbayyib — grammar: "Diminutive Nouns"
%   nisba_nouns                  baHreeni — grammar: "Nisba Nouns"
%   banka_type                   banka
%   non_linear_plural_templates_and_examples bgara — grammar: "Non-linear plural templates and examples"
%   bint_type                    bint
%   feminine_dual_paradigm       bəʃkaara — grammar: "Feminine dual paradigm"
%   occupational_nouns           cairfraab — grammar: "Occupational Nouns"
%   fa9aalil_2                   catti — grammar: "fa9aalil"
%   feminine_dual_paradigm_2     darraadʒa — grammar: "Feminine dual paradigm"
%   faras_type                   faras
%   non_linear_plural_templates_and_examples_2 gaari — grammar: "Non-linear plural templates and examples"
%   gabga_type                   gabga
%   occupational_nouns_2         gassaab — grammar: "Occupational Nouns"
%   glaas_type                   glaas
%   diminutive_nouns_2           gsayyir — grammar: "Diminutive Nouns"
%   nisba_nouns_2                gtari — grammar: "Nisba Nouns"
%   fa9aalil_3                   guuti — grammar: "fa9aalil"
%   masculine_dual_paradigm      haddaf — grammar: "Masculine dual paradigm"
%   fi91aan                      jaar — grammar: "fi91aan"
%   kaatib_type                  kaatib
%   kirfaaya_type                kirfaaya
%   fa9aalil_4                   kirsi — grammar: "fa9aalil"
%   nisba_nouns_3                kweeti — grammar: "Nisba Nouns"
%   mafaa9il                     maHkama — grammar: "mafaa9il"
%   mafaa9il_2                   maalad — grammar: "mafaa9il"
%   mafaa9il_3                   magbara — grammar: "mafaa9il"
%   mafaa9il_4                   maktab — grammar: "mafaa9il"
%   mafaa9il_5                   mantaga — grammar: "mafaa9il"
%   mafaa9il_6                   markaz — grammar: "mafaa9il"
%   mafaa9il_7                   matbax — grammar: "mafaa9il"
%   mafaa9il_8                   miskila — grammar: "mafaa9il"
%   mafaa9il_9                   msiid — grammar: "mafaa9il"
%   feminine_plural_paradigm     mubtadəʔa — grammar: "Feminine plural paradigm"
%   occupational_nouns_3         mudarris — grammar: "Occupational Nouns"
%   masculine_dual_paradigm_2    mudarrəb — grammar: "Masculine dual paradigm"
%   mudiir_type                  mudiir
%   masculine_plural_paradigm    muhandəs — grammar: "Masculine plural paradigm"
%   feminine_plural_paradigm_2   mumarrədˁa — grammar: "Feminine plural paradigm"
%   masculine_plural_paradigm_2  muraqəb — grammar: "Masculine plural paradigm"
%   masculine_plural_paradigm_3  musaaʕəd — grammar: "Masculine plural paradigm"
%   muslim_type                  muslim
%   feminine_plural_paradigm_3   mustadʒədda — grammar: "Feminine plural paradigm"
%   masculine_plural_paradigm_4  mutˤrəb — grammar: "Masculine plural paradigm"
%   non_linear_plural_templates_and_examples_3 mənħaaz — grammar: "Non-linear plural templates and examples"
%   non_linear_plural_templates_and_examples_4 məskiin — grammar: "Non-linear plural templates and examples"
%   non_linear_plural_templates_and_examples_5 məsmaar — grammar: "Non-linear plural templates and examples"
%   masculine_dual_paradigm_3    mʕalləm — grammar: "Masculine dual paradigm"
%   feminine_plural_paradigm_4   mʕalma — grammar: "Feminine plural paradigm"
%   naar_type                    naar
%   non_linear_plural_templates_and_examples_6 naxla — grammar: "Non-linear plural templates and examples"
%   non_linear_plural_templates_and_examples_7 nəffaaxa — grammar: "Non-linear plural templates and examples"
%   fa9aalil_5                   quuri — grammar: "fa9aalil"
%   ragsa_type                   ragsa
%   diminutive_nouns_3           rfayyij — grammar: "Diminutive Nouns"
%   riil_type                    riil
%   diminutive_nouns_4           rxayyis — grammar: "Diminutive Nouns"
%   nisba_nouns_4                saarji — grammar: "Nisba Nouns"
%   occupational_nouns_4         sammaac — grammar: "Occupational Nouns"
%   non_linear_plural_templates_and_examples_8 saruud — grammar: "Non-linear plural templates and examples"
%   seekal_type                  seekal
%   diminutive_nouns_5           sqayyir — grammar: "Diminutive Nouns"
%   non_linear_plural_templates_and_examples_9 sətʃtʃiin — grammar: "Non-linear plural templates and examples"
%   masculine_plural_paradigm_5  sˁajjaad — grammar: "Masculine plural paradigm"
%   fa9aalil_6                   ta'agiyya — grammar: "fa9aalil"
%   masculine_dual_paradigm_4    tˤalˤəb — grammar: "Masculine dual paradigm"
%   non_linear_plural_templates_and_examples_10 tˤarraad — grammar: "Non-linear plural templates and examples"
%   fi91aan_2                    waadi — grammar: "fi91aan"
%   non_linear_plural_templates_and_examples_11 xajjatˤ — grammar: "Non-linear plural templates and examples"
%   zaayir_type                  zaayir
%   feminine_dual_paradigm_3     ħərma — grammar: "Feminine dual paradigm"
%   feminine_dual_paradigm_4     ʕaamla — grammar: "Feminine dual paradigm"
%   feminine_dual_paradigm_5     ʕəlba — grammar: "Feminine dual paradigm"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
