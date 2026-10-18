% rules/psh/nouns.lp
% Pashai nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389434: A Descriptive Grammar of Pashai: The Language and Speech Community of Darrai Nur (2014), pages 148, 149, 190, 191, 239, 248, 249, 253, 254, 281, 282, 283, 284, 289, 291
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_iii_nouns_consonant_final_stem ai — grammar: "Class III Nouns Consonant-Final Stem"
%   class_iii_nouns_vowel_final_stem gā — grammar: "Class III Nouns Vowel-Final Stem"
%   class_iii_nouns_vowel_final_stem_2 gē — grammar: "Class III Nouns Vowel-Final Stem"
%   class_iii_nouns_vowel_final_stem_3 gō — grammar: "Class III Nouns Vowel-Final Stem"
%   class_iv_nouns               gōr.-i, lek-akāl-i, šār.-eV-i — grammar: "Class IV Nouns"
%   class_v_nouns                gōr.-ā, lek-akāl-ā — grammar: "Class V Nouns"
%   class_v_nouns_2              kot.ā, pelā, čilā — grammar: "Class V Nouns"
%   class_iii_nouns_consonant_final_stem_2 lai, mēz, sai, sēb ... — grammar: "Class III Nouns Consonant-Final Stem"
%   class_iv_nouns_2             poli, ādemi — grammar: "Class IV Nouns"
%   class_iii_nouns_consonant_final_stem_3 ìēk — grammar: "Class III Nouns Consonant-Final Stem"
%   class_iv_nouns_3             čapu, čuču — grammar: "Class IV Nouns"
%   class_v_nouns_3              šār.-aV-ā — grammar: "Class V Nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
