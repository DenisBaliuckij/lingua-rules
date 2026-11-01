% rules/arc/nouns.lp
% Biblical Aramaic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67205: Grammatik der biblisch-chaldäischen Sprache und des Idioms des Thalmud Babli (1873), pages 21, 22, 23, 32, 36, 37, 38, 39, 40, 42, 46, 48, 49, 50
%   doc 851861: A Short Grammar of Biblical Aramaic (n.d.), pages 22, 25, 26, 34, 36, 38, 46, 52, 103, 104, 106
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   mannliche_nomina_substantive_und_adjecti עדן — grammar: "männliche Nomina, Substantive und Adjective"
%   class_type                   חיון
%   nouns_in_the_singular        ar — grammar: "Nouns in the Singular"
%   nouns_in_the_singular_2      nrn — grammar: "Nouns in the Singular"
%   wirkliche_nomina_substantive_und_adjecti חלא — grammar: "wirkliche Nomina, Substantive und Adjective"
%   nouns_in_the_plural          ••ai — grammar: "Nouns in the Plural"
%   animal_type                  animal
%   king_type                    king
%   nouns_in_the_plural_2        •rirn — grammar: "Nouns in the Plural"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
