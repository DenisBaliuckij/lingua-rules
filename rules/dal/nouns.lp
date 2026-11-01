% rules/dal/nouns.lp
% Dahalo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8399: A Grammatical Sketch of Dahalo Including Texts and a Glossary (1991), pages 22, 25, 35, 40, 41
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ethnic_names                 ?doo? — grammar: "ethnic names"
%   plurals_by_suffixation_of_a_dental_eleme b — grammar: "plurals by suffixation of a dental element"
%   ethnic_names_2               d'dko — grammar: "ethnic names"
%   plurals_by_suffixation_of_a_dental_eleme_2 d'iibe — grammar: "plurals by suffixation of a dental element"
%   ethnic_names_3               kdriie — grammar: "ethnic names"
%   ethnic_names_4               kiidze — grammar: "ethnic names"
%   plurals_by_suffixation_of_a_dental_eleme_3 nimonkqlo — grammar: "plurals by suffixation of a dental element"
%   ethnic_names_5               otirine — grammar: "ethnic names"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
