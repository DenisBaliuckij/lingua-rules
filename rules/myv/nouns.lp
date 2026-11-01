% rules/myv/nouns.lp
% Erzya (Serkali dialect) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15538: An Introductory Course of the Erzya Language (2014), pages 19, 26, 29, 39, 40, 46, 47, 51, 52, 53, 58, 60, 70, 76, 77
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   body_parts                   pŕam — grammar: "body parts"
%   indefinite_declension        kudo — grammar: "indefinite declension"
%   definite_declension          veĺe, meźe — grammar: "definite declension"
%   indefinite_declension_2      lomań, śed́ej — grammar: "indefinite declension"
%   sur_type                     sur
%   selme_type                   šeĺme
%   definite_declension_2        od — grammar: "definite declension"
%   kinship_terms                sazorom — grammar: "kinship terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
