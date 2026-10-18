% rules/bgq/nouns.lp
% Bagri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389220: A Descriptive Grammar of Bagri (1999), pages 62, 63, 89, 90, 91, 101, 102, 108, 110, 127
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine_nouns_ending_in_other_vowels admi — grammar: "Masculine nouns ending in other vowels"
%   masculine_nouns_ending_in_0  choro — grammar: "Masculine nouns ending in /-0/"
%   animate_feminine             chari — grammar: "Animate feminine"
%   inanimate_feminine           ghari — grammar: "Inanimate feminine"
%   masculine_nouns_ending_in_0_2 jholo — grammar: "Masculine nouns ending in /-0/"
%   masculine_ending_in_i_a_i    charo — grammar: "Masculine ending in I-a I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
