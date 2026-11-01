% rules/tpj/nouns.lp
% Tapiete nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21677: A grammar of Tapiete (Tupi-Guarani) (2005), pages 130
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_iib                    ayi — grammar: "Class IIb"
%   class_iia_a                  esa — grammar: "Class IIa (a)"
%   class_iia_b                  ipoti — grammar: "Class IIa (b)"
%   class_iid                    pe — grammar: "Class IId"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
