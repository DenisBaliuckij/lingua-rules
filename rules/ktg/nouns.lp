% rules/ktg/nouns.lp
% Kalkatungu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 24: A Kalkatungu Grammar (1979), pages 41
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   consonant_stems_stems_of_more_than_two_s kalpin — grammar: "Consonant Stems: Stems of more than two syllables"
%   vowel_stems_stems_of_2_syllables_nasal_s kunka — grammar: "Vowel Stems: Stems of 2 Syllables - + nasal stop cluster"
%   vowel_stems_stems_of_2_syllables_nasal_s_2 kupu — grammar: "Vowel Stems: Stems of 2 Syllables - nasal stop cluster"
%   consonant_stems_stems_of_more_than_two_s_2 macumpa — grammar: "Consonant Stems: Stems of more than two syllables"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
