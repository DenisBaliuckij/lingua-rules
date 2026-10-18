% rules/mof/verbs.lp
% Narragansett verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388534: Grammatical Studies in the Narragansett Language (2nd ed.) (2009), pages 45, 46, 53
%   doc 389563: Modern Mohegan: The Dialect of Jits Bodu (2003), pages 24, 25, 27, 28, 29, 30, 31, 32
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   transitive_inanimate_consonant_stems miz — grammar: "transitive inanimate consonant-stems"
%   type_i_verb                  wau — grammar: "TYPE I Verb"
%   transitive_animate_consonant_stems kan — grammar: "transitive animate consonant-stems"
%   intransitive_a_or_u_stems    abu — grammar: "Intransitive -a or -u stems"
%   transitive_inanimate_vowel_stems aca — grammar: "transitive inanimate vowel-stems"
%   transitive_inanimate_consonant_stems_2 anon — grammar: "transitive inanimate consonant-stems"
%   intransitive_consonant_stems anos — grammar: "Intransitive consonant-stems"
%   intransitive_a_or_o_stems    bamozo — grammar: "Intransitive -a or -o stems"
%   intransitive_i_stems         gaji — grammar: "Intransitive -i stems"
%   intransitive_consonant_stems_2 kuduk — grammar: "Intransitive consonant-stems"
%   intransitive_animate_consonant_stems kuduku — grammar: "intransitive animate consonant-stems"
%   intransitive_a_or_u_stems_2  maca — grammar: "Intransitive -a or -u stems"
%   intransitive_a_or_o_stems_2  rna — grammar: "Intransitive -a or -o stems"
%   transitive_animate_vowel_stems tiku, asama — grammar: "transitive animate vowel-stems"
%   transitive_inanimate_vowel_stems_2 co — grammar: "transitive inanimate vowel-stems"
%   transitive_animate_vowel_stems_2 iw — grammar: "transitive animate vowel-stems"
%   subjunctive_mode_animate_and_inanimate_i mil — grammar: "Subjunctive Mode; Animate and inanimate intransitive"
%   imperative_mode_transitive_inanimate wauntash — grammar: "Imperative Mode, Transitive Inanimate"
%   participial_mode_animate_and_inanimate_i ma — grammar: "Participial Mode; Animate and inanimate intransitive"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
