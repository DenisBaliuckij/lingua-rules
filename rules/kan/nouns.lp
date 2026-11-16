% rules/kan/nouns.lp
% Kannada nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388366: A Kanarese Grammar With Graduated Exercises (1950), pages 51, 61, 65, 68, 81, 92, 98
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nouns_of_the_third_declension_ending_in bāla, vamsa — grammar: "Nouns of the third declension ending in variable w"
%   nouns_of_the_third_declension_ending_in_2 guru — grammar: "Nouns of the third declension ending in invariable w"
%   nouns_of_the_third_declension_ending_in_3 kalyani, strī — grammar: "Nouns of the third declension ending in invariable w"
%   nouns_of_the_third_declension_ending_in_4 pitara — grammar: "Nouns of the third declension ending in invariable w"
%   class_type                   $
%   nouns_of_the_first_declension_a_the_regu de — grammar: "Nouns of the First Declension (a) The Regular Declension (i) Masc. and Fem."
%   first_declension             dJd — grammar: "First Declension"
%   third_a_declension           #da — grammar: "Third A Declension"
%   cvcc                         fin — grammar: "CvCC-"
%   third_b_declension           ow? — grammar: "Third B Declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
