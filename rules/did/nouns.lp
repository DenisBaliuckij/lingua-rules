% rules/did/nouns.lp
% Lango nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14808: A Grammar of Lango (1992), pages 94, 96, 99, 100, 102, 103, 108, 109, 111, 113, 115, 121, 122, 125
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kul_type                     kul
%   rec_type                     rec
%   gwok_type                    gwok
%   vowel_final_inalienably_possessed_nouns nero — grammar: "vowel final inalienably possessed nouns (B set)"
%   vowel_final_inalienably_possessed_nouns_2 remo — grammar: "vowel final inalienably possessed nouns (B set)"
%   tule_type                    tule
%   pala_type                    pala
%   i_plurals                    Iwägo — grammar: "-i plurals"
%   e_plurals                    buk — grammar: "-e plurals"
%   i_plurals_2                  dyaij — grammar: "-i plurals"
%   e_plurals_2                  däktäl — grammar: "-e plurals"
%   i_plurals_3                  got — grammar: "-i plurals"
%   gulu_type                    gulu
%   e_plurals_3                  idike — grammar: "-e plurals"
%   e_plurals_4                  kam — grammar: "-e plurals"
%   e_plurals_5                  kwac — grammar: "-e plurals"
%   kul_type_2                   kül
%   ni_plurals                   lao — grammar: "-ni plurals"
%   e_plurals_6                  odilö — grammar: "-e plurals"
%   i_plurals_4                  paco — grammar: "-i plurals"
%   e_plurals_7                  par) — grammar: "-e plurals"
%   e_plurals_8                  puc — grammar: "-e plurals"
%   ni_plurals_2                 romS — grammar: "-ni plurals"
%   ni_plurals_3                 tog — grammar: "-ni plurals"
%   consonant_final_inalienably_possessed_no tula — grammar: "consonant final inalienably possessed nouns (A set)"
%   i_plurals_5                  twön — grammar: "-i plurals"
%   e_plurals_9                  welö — grammar: "-e plurals"
%   i_plurals_6                  yät — grammar: "-i plurals"
% Irregular (listed in data/nouns.exceptions.tsv): cul, dwe, dyel, gwök, pig, äwobi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
