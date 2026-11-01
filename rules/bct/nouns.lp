% rules/bct/nouns.lp
% Bendi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 848567: A Grammar of the Kaffir Language: Edition 2 Augmented and Improved with Vocabulary and Exe (1857), pages 45, 66, 85, 92, 126, 132, 139
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   third_declension_plural_in_in U'bambo — grammar: "third declension (plural in in)"
%   second_declension_plural_in_i U'lwimi — grammar: "second declension (plural in i)"
%   third_declension_plural_in_in_2 U'tango — grammar: "third declension (plural in in)"
%   second_declension_plural_in_i_2 eedo — grammar: "second declension (plural in i)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
