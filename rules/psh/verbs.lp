% rules/psh/verbs.lp
% Pashai verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389434: A Descriptive Grammar of Pashai: The Language and Speech Community of Darrai Nur (2014), pages 148, 149, 190, 191, 239, 248, 249, 253, 254, 281, 282, 283, 284, 289, 291
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   proximate_perfect_marker_consonant_final b — grammar: "Proximate Perfect Marker Consonant-Final Stem"
%   a_type                       ā
%   proximate_perfect_intransitive g — grammar: "Proximate Perfect Intransitive"
%   present_future_non_specific_intransitive pa — grammar: "Present-Future Non-Specific Intransitive"
%   present_future_non_specific  t — grammar: "Present-Future Non-Specific"
%   stative_participle_vowel_final_stems e — grammar: "Stative Participle Vowel-Final Stems"
%   stative_participle_vowel_final_stems_2 ka — grammar: "Stative Participle Vowel-Final Stems"
%   distal_perfect_intransitive_marker_vowel ni — grammar: "Distal Perfect Intransitive Marker Vowel-Final Stem"
%   distal_perfect_intransitive_marker_vowel_2 nē — grammar: "Distal Perfect Intransitive Marker Vowel-Final Stem"
%   proximate_perfect_marker_consonant_final_2 pol — grammar: "Proximate Perfect Marker Consonant-Final Stem"
%   stative_participle_consonant_final_stems dam — grammar: "Stative Participle Consonant-Final Stems"
%   stative_participle_consonant_final_stems_2 tap — grammar: "Stative Participle Consonant-Final Stems"
%   stative_participle_consonant_final_stems_3 tost — grammar: "Stative Participle Consonant-Final Stems"
%   stative_participle_consonant_final_stems_4 unǰ — grammar: "Stative Participle Consonant-Final Stems"
%   stative_participle_consonant_final_stems_5 šār — grammar: "Stative Participle Consonant-Final Stems"
%   stative_participle_vowel_final_stems_3 ǰe — grammar: "Stative Participle Vowel-Final Stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
