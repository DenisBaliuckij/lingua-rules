% rules/pbh/nouns.lp
% Panare nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21263: Esbozo de una gramática de la lengua kari’ña (2016), pages 53, 98, 100, 101, 102, 103, 104, 106, 110, 111, 114, 122, 123, 125, 126, 146, 150
%   doc 21264: A Typological Grammar of Panare: A Cariban Language of Venezuela (2013), pages 96, 217, 254, 284
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   uchireemato_type             uchireemato
%   nombres_deverbales_de_instrumento_o_luga vataapono — grammar: "Nombres deverbales de instrumento o lugar"
% Irregular (listed in data/nouns.exceptions.tsv): sanë
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
