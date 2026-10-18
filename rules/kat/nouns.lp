% rules/kat/nouns.lp
% Georgian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 54371: Georgian: A Comprehensive Grammar (2018), pages 51, 52, 58, 66, 67, 73, 74, 88, 100, 148, 238, 239, 241, 245, 250, 252, 353, 356, 358, 372, 379, 382, 389, 393, 397, 400
%   doc 54383: Georgian: A Structural Reference Grammar (1995), pages 54, 56, 70, 97, 98, 99, 101, 105, 307, 308, 313, 314, 385, 388, 414, 465, 474, 478, 488, 489, 544
%   doc 54387: The Georgian Verb (n.d.), pages 57, 58, 77, 79, 80, 88, 91, 92, 93, 94, 356, 363, 376, 381, 390, 398, 424, 426, 432, 484, 528, 530, 542, 544, 557, 567, 587
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   godor_i_type                 godor-i
%   gutan_i_type                 gutan-i
%   mac_on_i_type                mac'on-i
%   class_type                   დანტე, გალოგრე
%   class_type_2                 დიმიტრიადი
%   ending_family_names          კარანაძე — grammar: "ე-ending family names"
%   class_type_3                 მენაბდე
%   cardinal_numerals            მილიარდი, ხუთი — grammar: "cardinal numerals"
%   class_type_4                 ბეჭედი
%   syncopating_nouns            თვალი, ფოთოლი — grammar: "syncopating nouns"
%   syncopating_nouns_2          ატამი — grammar: "syncopating nouns"
%   maga_type                    maġa
%   class_type_5                 ტანსაცმელი, ობოლი, სოფელი — grammar: "-ოლ"
%   class_type_6                 მაწონი
%   class_type_7                 ნიორი
%   class_type_8                 გოდორი, მტერი — grammar: "-ორ"
%   complex_consonant_stem_cardinal_numerals თხუთმეტი — grammar: "complex consonant-stem cardinal numerals"
%   class_type_9                 ირემი — grammar: "-ემ"
%   complex_consonant_stem_cardinal_numerals_2 რვაას — grammar: "complex consonant-stem cardinal numerals"
%   class_type_10                ყურძენი — grammar: "-ენ"
%   class_type_11                კალამი — grammar: "-ამ"
%   class_type_12                საგანი — grammar: "-ან"
%   class_type_13                სტუმარი — grammar: "-არ"
%   class_type_14                წყალი — grammar: "-ალ"
% Irregular (listed in data/nouns.exceptions.tsv): მოყვარე, ქარხანა, ღვინო, ხბო
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
