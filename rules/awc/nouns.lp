% rules/awc/nouns.lp
% Cicipu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 20896: C'Lela Grammar Portrait (2015), pages 41, 69, 70, 71, 73, 74, 96, 97, 126
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_1_nouns                t͡ʃètò — grammar: "Class 1 nouns"
%   hnu_type                     hɘ̀nù
%   class_1_noun_singular        bàtkê — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_2      dàptà — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_3      dáptá — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_4      dòndó:kà — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_5      dɛ̀kɛ́ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_6      dʷìrì — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_7      gʷɛ̀lɛ̀ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_8      hòrá͏ŋgá — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_9      lɔ̀gmɔ̂ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_10     lɘ́ntɘ̀ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_11     nètà — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_12     nìnmú — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_13     sìbɘ̀ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_14     t͡ʃʷèt͡ʃé — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_15     ɔ́mɔ̀ — grammar: "Class 1 Noun (singular)"
%   class_1_noun_singular_16     ɘ̀ɾmɘ̂ — grammar: "Class 1 Noun (singular)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
