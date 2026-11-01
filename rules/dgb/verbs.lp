% rules/dgb/verbs.lp
% Bunoge verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9354: A Grammar of Bunoge (2014), pages 85, 178, 192, 193, 194, 195, 196, 202, 223, 234, 247, 272
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   stative_quasi_verbs          bò — grammar: "stative quasi-verbs"
%   nonsubject_focus_perfective  pára-gè — grammar: "nonsubject focus perfective"
%   final_nonhigh_vowel_verbs    dǎ — grammar: "final-nonhigh-vowel verbs"
%   final_nonhigh_vowel_verbs_2  kà:yá — grammar: "final-nonhigh-vowel verbs"
%   final_nonhigh_vowel_verbs_3  pò:lá — grammar: "final-nonhigh-vowel verbs"
%   final_nonhigh_vowel_verbs_4  sìgá — grammar: "final-nonhigh-vowel verbs"
%   final_nonhigh_vowel_verbs_5  ʔègá — grammar: "final-nonhigh-vowel verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
