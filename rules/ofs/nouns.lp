% rules/ofs/nouns.lp
% Old Frisian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388730: An Introduction to Old Frisian: History, Grammar, Reader, Glossary (2009), pages 67, 68, 69, 72, 73, 74, 75, 76, 77, 78, 84, 85, 88, 89, 97, 98
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   r_stems                      brōther — grammar: "r-stems"
%   masculine_nouns_a_stems      bām — grammar: "Masculine nouns (a-stems)"
%   nouns_in_nd_present_participle_stems friūnd — grammar: "Nouns in -nd (present-participle stems)"
%   feminine_strong_nouns_o_stems ieve — grammar: "Feminine strong nouns (ō-stems)"
%   weak_declension_n_stems      skelta — grammar: "Weak declension (n-stems)"
%   neuter_strong_nouns_a_stems  skip — grammar: "Neuter strong nouns (a-stems)"
%   u_declension                 sune — grammar: "u-declension"
%   weak_declension_n_stems_2    tunge — grammar: "Weak declension (n-stems)"
%   neuter_strong_nouns_a_stems_2 word — grammar: "Neuter strong nouns (a-stems)"
%   feminine_strong_nouns_o_stems_2 wund — grammar: "Feminine strong nouns (ō-stems)"
%   weak_declension_n_stems_3    āge — grammar: "Weak declension (n-stems)"
% Irregular (listed in data/nouns.exceptions.tsv): dei
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
