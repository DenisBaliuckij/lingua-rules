% rules/kru/nouns.lp
% Kurukh nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2930: The Kurux Language: Grammar, Texts and Lexicon (2017), pages 96, 107, 112, 113, 114, 145, 150, 151, 152, 153, 154, 155, 156, 157, 158
%   doc 26324: Kurukh Grammar (1911), pages 28, 33, 40, 41, 42, 44, 45, 46, 48, 49, 53, 62, 63, 67, 68, 71, 73, 84, 85, 86
%   doc 849769: SARALA (TRIBHASI) BHASHA SIKSHYANA PUSTIKA (ORAON) (2018), pages 39, 40
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine                    dl — grammar: "Masculine"
%   feminine                     mukkd — grammar: "Feminine"
%   masculine_nouns_of_the_third_person_sing dlj — grammar: "masculine nouns of the third person singular"
%   neuter                       alia — grammar: "Neuter"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
