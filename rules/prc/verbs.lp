% rules/prc/verbs.lp
% Parachi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389558: Parachi (1985), pages 4, 5, 13
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_verbs_ending_in_a_dental_or_vowel ch-r — grammar: "weak verbs ending in a dental or vowel"
%   strong_verbs_ending_in_a_dental_or_vowel ay — grammar: "strong verbs ending in a dental or vowel"
%   strong_verbs_ending_in_a_dental_or_vowel_2 mor — grammar: "strong verbs ending in a dental or vowel"
%   strong_verbs_ending_in_a_dental_or_vowel_3 nhast — grammar: "strong verbs ending in a dental or vowel"
%   strong_verbs_ending_in_a_dental_or_vowel_4 osta — grammar: "strong verbs ending in a dental or vowel"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
