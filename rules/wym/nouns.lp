% rules/wym/nouns.lp
% Wymysorys nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11: A Grammar of Wymysorys (2016), pages 28, 29, 31, 32, 33, 34, 35, 36, 39, 40, 43, 79, 80, 81, 82, 83, 85, 86, 87, 91, 95, 96, 99, 106
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_m_2_1_plural_in_a      kjyt — grammar: "Class M-2.1: Plural in -a"
%   class_m_1_1_plural_in        kyng — grammar: "Class M-1.1: Plural in -Æ"
%   class_m_1_1_plural_in_2      kyz — grammar: "Class M-1.1: Plural in -Æ"
%   class_m_2_1_plural_in_a_2    ryk — grammar: "Class M-2.1: Plural in -a"
%   class_f_2_1_plural_in_a      Pulk — grammar: "Class F-2.1: Plural in -a"
%   class_n_1_1                  bet — grammar: "Class N-1.1"
%   class_n_1_1_2                bihła — grammar: "Class N-1.1"
%   class_m_1_1_plural_in_3      büzum — grammar: "Class M-1.1: Plural in -Æ"
%   class_n_3_1                  bȧjśpil — grammar: "Class N-3.1"
%   class_m_1_2_plural_in_and_vowel_mutation con — grammar: "Class M-1.2: Plural in -Æ and vowel mutation"
%   class_f_2_1_plural_in_a_2    cȧjt — grammar: "Class F-2.1: Plural in -a"
%   class_m_3_1_plural_in_n      engl — grammar: "Class M-3.1: Plural in -n"
%   class_f_3_3_plural_in_yn     fader — grammar: "Class F-3.3: Plural in -yn"
%   class_n_3_1_2                fał — grammar: "Class N-3.1"
%   class_f_2_0_implied_by_context_of_vowel gonz — grammar: "Class F-2.0 (implied by context of vowel mutation)"
%   class_f_3_1_plural_in_n      gügl — grammar: "Class F-3.1 Plural in -n"
%   class_f_3_3_plural_in_yn_2   hün — grammar: "Class F-3.3: Plural in -yn"
%   class_n_2_1                  kni — grammar: "Class N-2.1"
%   class_f_2_2_plural_in_a_and_vowel_mutati kroft — grammar: "Class F-2.2: Plural in -a and vowel mutation"
%   class_n_3_3                  kynd — grammar: "Class N-3.3"
%   class_m_2_1_plural_in_a_3    kȧjm — grammar: "Class M-2.1: Plural in -a"
%   class_n_3_3_2                maser — grammar: "Class N-3.3"
%   class_m_1_1_plural_in_4      noma — grammar: "Class M-1.1: Plural in -Æ"
%   class_n_2_1_2                oüg — grammar: "Class N-2.1"
%   class_m_1_2_plural_in_and_vowel_mutation_2 puś — grammar: "Class M-1.2: Plural in -Æ and vowel mutation"
%   class_n_3_3_3                rür — grammar: "Class N-3.3"
%   class_n_1_1_3                typa — grammar: "Class N-1.1"
%   class_m_2_1_plural_in_a_4    tȧjh — grammar: "Class M-2.1: Plural in -a"
%   class_n_3_3_4                wüt — grammar: "Class N-3.3"
%   class_m_1_2_plural_in_and_vowel_mutation_3 zak — grammar: "Class M-1.2: Plural in -Æ and vowel mutation"
%   class_m_1_2_plural_in_and_vowel_mutation_4 śruma — grammar: "Class M-1.2: Plural in -Æ and vowel mutation"
%   class_f_3_2_plural_in_n_and_vowel_mutati śül — grammar: "Class F-3.2: Plural in -n and vowel mutation"
%   class_m_3_1_plural_in_n_2    štejł — grammar: "Class M-3.1: Plural in -n"
%   class_m_3_1_plural_in_n_3    štül — grammar: "Class M-3.1: Plural in -n"
%   class_m_1_1_plural_in_5      štȧn — grammar: "Class M-1.1: Plural in -Æ"
%   class_f_3_1_plural_in_n_2    ȧksuł — grammar: "Class F-3.1 Plural in -n"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
