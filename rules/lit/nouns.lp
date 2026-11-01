% rules/lit/nouns.lp
% Lithuanian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389186: A Short Grammar of Lithuanian (1996), pages 40, 42, 43, 44, 45, 46, 47, 48, 59, 60, 62, 66, 73, 101, 107, 108, 112, 113, 130, 131, 140, 159
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   first_declension             arklys — grammar: "First Declension"
%   fifth_declension_consonant_stems dukteris — grammar: "Fifth Declension (Consonant Stems)"
%   second_declension            dvasia — grammar: "Second Declension"
%   second_declension_2          kate — grammar: "Second Declension"
%   first_declension_2           kelias — grammar: "First Declension"
%   first_declension_3           medis — grammar: "First Declension"
%   fourth_declension_u_stems    profesorius — grammar: "fourth declension (u-stems)"
%   first_declension_4           svetimas — grammar: "First Declension"
%   fourth_declension_u_stems_2  sūnus — grammar: "fourth declension (u-stems)"
%   accent_paradigm_1            vyras — grammar: "accent paradigm 1"
%   fifth_declension_consonant_stems_2 akmuo — grammar: "Fifth Declension (Consonant Stems)"
%   second_declension_3          gerkle — grammar: "Second Declension"
%   accent_paradigm_4            namas — grammar: "accent paradigm 4"
%   accent_paradigm_2            ratas — grammar: "accent paradigm 2"
%   fifth_declension_consonant_stems_3 sesuo — grammar: "Fifth Declension (Consonant Stems)"
%   third_declension_i_stems     sirdis — grammar: "Third Declension (i-Stems)"
%   second_declension_4          varna — grammar: "Second Declension"
%   third_declension_i_stems_2   dantis — grammar: "Third Declension (i-Stems)"
%   accent_paradigm_4_subtype_ys genys — grammar: "accent paradigm 4 subtype -ys"
%   second_declension_5          marti — grammar: "Second Declension"
%   accent_paradigm_3            langas — grammar: "accent paradigm 3"
%   reflexive_nouns              kreipimasis — grammar: "reflexive nouns"
%   third_declension_i_stems_3   fUSlS — grammar: "Third Declension (i-Stems)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
