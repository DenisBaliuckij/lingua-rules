% rules/nlm/nouns.lp
% Mankiyali nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920781: A First Look at Mankiyali Morphology (2022), pages 30, 31, 32, 33, 34, 35, 36, 38, 39, 40, 43, 44, 45, 49, 53, 54, 73, 74
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_iv                     baadšaa — grammar: "Class IV"
%   class_iii                    cuukʰuur — grammar: "Class III"
%   class_iii_2                  saap — grammar: "Class III"
%   class_v                      xvarɪɪ — grammar: "Class V"
%   class_i                      zaṇa — grammar: "Class I"
%   class_ii                     ḍaakii — grammar: "Class II"
%   class_iv_noun_paradigms      kaakaa, kaalaa — grammar: "Class IV Noun Paradigms"
%   class_iii_noun_paradigms     diz, šarmax — grammar: "Class III Noun Paradigms"
%   class_v_2                    harnii — grammar: "Class V"
%   class_i_nouns                kʰoota — grammar: "Class I Nouns"
%   class_iii_noun_paradigms_2   mosaafar — grammar: "Class III Noun Paradigms"
%   class_ii_nouns               ɡoo — grammar: "Class II Nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
