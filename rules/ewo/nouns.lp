% rules/ewo/nouns.lp
% Ewondo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 794202: Die Sprache der Jaunde in Kamerun (1905), pages 15, 25, 26, 54, 62
%   doc 845701: Petite grammaire Ewondo avec exercices appropriés, suivie d'un petit manuel de conversatio (1950), pages 10, 11, 14, 25, 31, 32, 68
%   doc 845702: A Descriptive Grammar of Ewondo (1979), pages 77, 85, 101, 107, 120, 121, 127, 128, 140, 143, 144, 145, 146, 149
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   c6eme_classe_de_noms         onûn — grammar: "6ème classe de noms"
%   besonderheiten_der_5_und_3_klasse zen — grammar: "Besonderheiten der 5. und 3. Klasse"
%   c3eme_classe_de_noms         dis — grammar: "3ème classe de noms"
%   c3eme_classe_de_noms_2       dzam — grammar: "3ème classe de noms"
%   c4eme_classe_de_noms         dzat — grammar: "4ème classe de noms"
%   c5e_classe_de_noms           fa — grammar: "5e classe de noms"
%   c5e_classe_de_noms_2         ka — grammar: "5e classe de noms"
%   c2eme_classe_de_noms         kus — grammar: "2ème classe de noms"
%   c3eme_classe_de_noms_3       lÿ — grammar: "3ème classe de noms"
%   c1ere_classe_de_noms         mininga — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_2       mot — grammar: "1ère classe de noms"
%   c5e_classe_de_noms_3         mvam — grammar: "5e classe de noms"
%   besonderheiten_der_5_und_1_klasse mvbe — grammar: "Besonderheiten der 5. und 1. Klasse"
%   c5e_classe_de_noms_4         mvoe — grammar: "5e classe de noms"
%   c1ere_classe_de_noms_3       mûn — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_4       mûngo — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_5       nana — grammar: "1ère classe de noms"
%   c5e_classe_de_noms_5         nda — grammar: "5e classe de noms"
%   besonderheiten_der_5_und_1_klasse_2 ndbm — grammar: "Besonderheiten der 5. und 1. Klasse"
%   c5e_classe_de_noms_6         ndom — grammar: "5e classe de noms"
%   c1ere_classe_de_noms_6       ndzin — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_7       ndzoe — grammar: "1ère classe de noms"
%   besonderheiten_der_5_und_3_klasse_2 ndä — grammar: "Besonderheiten der 5. und 3. Klasse"
%   c5e_classe_de_noms_7         ngañ — grammar: "5e classe de noms"
%   besonderheiten_der_5_und_1_klasse_3 ngon — grammar: "Besonderheiten der 5. und 1. Klasse"
%   c5e_classe_de_noms_8         ngôm — grammar: "5e classe de noms"
%   c5e_classe_de_noms_9         ngôn — grammar: "5e classe de noms"
%   c1ere_classe_de_noms_8       nna — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_9       nnyia — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_10      nnyoa — grammar: "1ère classe de noms"
%   c1ere_classe_de_noms_11      nti — grammar: "1ère classe de noms"
%   c6eme_classe_de_noms_2       oyem — grammar: "6ème classe de noms"
%   c1ere_classe_de_noms_12      sem — grammar: "1ère classe de noms"
%   besonderheiten_der_5_und_3_klasse_3 son — grammar: "Besonderheiten der 5. und 3. Klasse"
%   c1ere_classe_de_noms_13      tara — grammar: "1ère classe de noms"
%   c5eme_classe_de_noms         zê — grammar: "5ème classe de noms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
