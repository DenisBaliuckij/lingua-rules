% rules/ary/nouns.lp
% Moroccan Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41669: The Routledge Introductory Course in Moroccan Arabic (2018), pages 149, 157, 159, 160, 173, 183, 202, 216, 228, 329, 340, 384, 449, 454, 502, 510, 555
%   doc 41673: A Grammar of Moroccan Arabic (2004), pages 39, 40, 41, 42, 44, 45, 66
%   doc 389983: Arabic, An Introduction to Moroccan (n.d.), pages 35, 36, 81, 82, 84, 85, 86, 91, 175, 176, 178, 180, 185, 190, 193
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ternary_system               jum — grammar: "ternary system"
%   ternary_system_2             mja — grammar: "ternary system"
%   ternary_system_3             qs∂m — grammar: "ternary system"
%   ternary_system_4             ζam — grammar: "ternary system"
%   ternary_system_5             ζšra — grammar: "ternary system"
%   feminine_regular_plurals     baliza — grammar: "Feminine regular plurals"
%   bnt_type                     bnt
%   feminine_regular_plurals_2   buṣŧa — grammar: "Feminine regular plurals"
%   fras_type                    fraš
%   masculine_regular_plurals    muɛellim — grammar: "Masculine regular plurals"
%   masculine_regular_plurals_2  mweđđaf — grammar: "Masculine regular plurals"
%   wid_type                     wid
%   umubil_type                  ŧumubil
% Irregular (listed in data/nouns.exceptions.tsv): ktab
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
