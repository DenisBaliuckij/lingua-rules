% rules/brh/nouns.lp
% Brahui nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289754: An Essay on the Brāhūī Grammar, after the German of the late Dr. Trumpp, of Munich Univers (1880), pages 13, 14, 15, 16, 20, 21, 22, 23, 26, 37, 39, 40, 41, 45, 47, 48, 57, 58, 59, 60, 65, 66
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nouns_ending_in_a_consonant  khal — grammar: "NOUNS ENDING IN A CONSONANT"
%   nouns_ending_in_n            khan — grammar: "Nouns ending in n"
%   nouns_ending_tn_ah           lummah — grammar: "NOUNS ENDING TN ah"
%   nouns_ending_in_a_long_vowel urd — grammar: "NOUNS ENDING IN A LONG VOWEL"
%   nouns_with_final_t_r         nat-t — grammar: "Nouns with final t (r)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
