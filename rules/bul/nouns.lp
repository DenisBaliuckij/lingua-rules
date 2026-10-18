% rules/bul/nouns.lp
% Bulgarian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389161: Очерк болгарской грамматики (1956), pages 124, 136, 148, 192, 202, 203, 206
%   doc 389162: Bulgarian (1986), pages 12, 13, 17, 18, 20, 25, 32, 33
%   doc 389163: A Concise Bulgarian Grammar (2014), pages 15, 16, 36, 42, 43, 51, 52, 56, 57, 64, 68, 69, 70
%   doc 389166: The Bulgarian Language: A Short Grammar of the (1897), pages 31, 46, 59, 60, 61, 62, 68, 69, 71, 79, 83
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine_singular_0         град, син — grammar: "Masculine singular /-0/"
%   masculine_singular_0_2       учител — grammar: "Masculine singular /-0/"
%   mapra_type                   Mapra
%   masculine_singular_nouns     апартамент, зъб, подход, суфикс ... — grammar: "Masculine Singular Nouns"
%   masculine_singular_nouns_2   възпитател, гробар, железничар, лакът ... — grammar: "Masculine Singular Nouns"
%   masculine_singular_nouns_3   зной, музей — grammar: "Masculine Singular Nouns"
%   masculine_singular_nouns_4   сняг — grammar: "Masculine Singular Nouns"
%   be_ihka_type                 Be^iHKa
%   pa_a_type                    Pa^a
%   class_type                   бинокъл
%   feminine_singular_nouns      вода — grammar: "Feminine Singular Nouns"
%   feminine_singular_nouns_2    книга — grammar: "Feminine Singular Nouns"
%   feminine_singular_nouns_3    кола — grammar: "Feminine Singular Nouns"
%   feminine_singular_nouns_4    кост — grammar: "Feminine Singular Nouns"
%   feminine_singular_nouns_5    котка — grammar: "Feminine Singular Nouns"
%   feminine_singular_nouns_6    майка — grammar: "Feminine Singular Nouns"
%   class_type_2                 младенец
%   neuter_nouns_with_sg_o_e_pl_a място — grammar: "Neuter nouns with SG /-o/ (/-e/), PL /-a/"
%   feminine_singular_nouns_7    нощ — grammar: "Feminine Singular Nouns"
%   class_type_3                 око
%   class_type_4                 патриарх
%   class_type_5                 пълководец
%   class_type_6                 първенец
%   class_type_7                 съпруг
%   neuter_nouns_with_sg_o_e_pl_a_2 сърце — grammar: "Neuter nouns with SG /-o/ (/-e/), PL /-a/"
%   class_type_8                 ухо
%   neuter_nouns_with_sg_o_e_pl_a_3 учение — grammar: "Neuter nouns with SG /-o/ (/-e/), PL /-a/"
%   feminine_singular_nouns_8    храброст — grammar: "Feminine Singular Nouns"
%   class_type_9                 юнак
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
