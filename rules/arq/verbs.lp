% rules/arq/verbs.lp
% Algerian Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626007: Algerian Arabic All in One Learning Book (2021), pages 18, 40, 43, 44, 45, 56, 57, 58, 59, 60, 61
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   regular_verb                 beddel — grammar: "regular verb"
%   short_vowel_verbs_ending_in_double_conso ḣass — grammar: "Short Vowel Verbs Ending in Double Consonants"
%   kteb_type                    kteb, tqelleq
%   verbs_ending_in_a            bdā — grammar: "Verbs Ending in “ā”"
%   short_vowel_verbs_with_a_double_consonan shedd — grammar: "Short Vowel Verbs With a Double Consonant Ending"
%   ba_type                      bā
%   dar_type                     dār
%   verbs_that_have_three_consonant_letters khdem, qsem — grammar: "Verbs that Have Three Consonant Letters and the Vowel "e" Before the Final Consonant"
%   verbs_that_have_more_than_four_letters_a khebbā, khellā — grammar: "Verbs that Have More than Four Letters and Ending in "ā""
%   khellet_type                 khelleṫ
%   nsa_type                     nsā
%   qas_type                     qās
%   rah_type                     rāḣ
%   shra_type                    shrā
%   shaf_type                    shāf
%   qra_type                     qrā
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
