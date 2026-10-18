% rules/chu/nouns.lp
% Old Church Slavonic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79441: Staroslavenska riječ: Gramatika starocrkvenoslavenskoga jezika (2014), pages 81, 100, 129, 130
%   doc 92938: Introduzione alla lingua paleoslava (2007), pages 145, 161, 193, 203, 274, 276, 277, 278, 280, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291
%   doc 289620: Hrammatiki slavenskija pravilnoe syntagma (Kirchenslavische Grammatik) (1974), pages 55, 57, 61, 69, 82, 96, 122, 132, 202, 209
%   doc 389281: Handbook of Old Church Slavonic, Part I: Old Church Slavonic Grammar (1959), pages 71, 77, 82, 112, 114, 116, 125, 132, 145, 182, 183, 184, 188, 191, 197, 198, 201, 204, 205, 206, 210, 214
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   stem_nouns                   гость — grammar: "-ь- stem nouns"
%   stem_nouns_2                 нощь — grammar: "-ь- stem nouns"
%   class_type                   пілница
%   hard_stems                   бѣкъ — grammar: "Hard stems"
%   soft_stems                   звѣнїе — grammar: "Soft stems"
%   hard_stems_2                 мѣстъ — grammar: "Hard stems"
%   class_type_2                 око
%   soft_stems_2                 срѣкъ — grammar: "Soft stems"
%   hard_stems_3                 HOP-d — grammar: "Hard stems"
%   a_osnova                     rQka — grammar: "a-osnova"
%   a_osnova_2                   zeml'a — grammar: "a-osnova"
%   a_osnova_3                   žena — grammar: "a-osnova"
%   i_osnova                     rabyni — grammar: "i-osnova"
%   hard_stems_4                 pA^K-d — grammar: "Hard stems"
%   soft_stems_3                 BOPlilH-H — grammar: "Soft stems"
%   i_osnova_2                   SQdi — grammar: "i-osnova"
%   class_type_3                 шбрлща
%   declinazione_in_r            mati — grammar: "declinazione in *r"
%   class_type_4                 врачъ
%   class_type_5                 Авва — grammar: "мужеска рода"
%   class_type_6                 Артеміс — grammar: "Женски Х ПАРАДИГМА"
%   class_type_7                 братъ
%   soft_stems_4                 ca^^h-h — grammar: "Soft stems"
%   soft_stems_5                 Aoyiu-d — grammar: "Soft stems"
%   class_type_8                 Влага — grammar: "НА/ ГА"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
