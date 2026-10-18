% rules/nld/nouns.lp
% Dutch nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 101153: Dutch: An Essential Grammar (2011), pages 38, 39, 44, 48, 50, 56, 80, 102, 103, 105, 106, 108, 109, 111, 114, 115, 116, 122, 139
%   doc 107001: Grammaire hollandaise (1850), pages 126, 138, 146, 201, 203, 204, 206
%   doc 108760: Dutch: A Comprehensive Grammar, 2nd edition (2010), pages 47, 81, 186, 188, 191, 193, 210, 220, 224, 226, 236
%   doc 937627: Dutch: An Essential Grammar (9th edition) (2010), pages 38, 39, 44, 48, 50, 56, 80, 102, 103, 105, 106, 108, 109, 111, 114, 115, 116, 122, 139
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   plural_in_en                 boer — grammar: "plural in -en"
%   plural_in_en_2               boot — grammar: "plural in -en"
%   plural_in_en_3               bos — grammar: "plural in -en"
%   plural_in_en_4               brief — grammar: "plural in -en"
%   plural_in_en_5               fles — grammar: "plural in -en"
%   plural_in_en_6               fotograaf — grammar: "plural in -en"
%   plural_in_en_7               krant — grammar: "plural in -en"
%   plural_in_en_8               mens — grammar: "plural in -en"
%   plural_in_en_9               prijs — grammar: "plural in -en"
%   plural_in_en_10              woord — grammar: "plural in -en"
% Irregular (listed in data/nouns.exceptions.tsv): bad, bedrag, been, blad, dag, dak, ei, gat, glas, god, kind, lid ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
