% rules/bul/verbs.lp
% Bulgarian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389161: Очерк болгарской грамматики (1956), pages 124, 136, 148, 192, 202, 203, 206
%   doc 389162: Bulgarian (1986), pages 12, 13, 17, 18, 20, 25, 32, 33
%   doc 389163: A Concise Bulgarian Grammar (2014), pages 15, 16, 36, 42, 43, 51, 52, 56, 57, 64, 68, 69, 70
%   doc 389166: The Bulgarian Language: A Short Grammar of the (1897), pages 31, 46, 59, 60, 61, 62, 68, 69, 71, 79, 83
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   stems_which_end_in_p_and_j   mp — grammar: "STEMS WHICH END IN p AND J."
%   fifth_class_a_stems_ist_group BHKa — grammar: "Fifth Class: a-STEMS. IST GROUP."
%   stems_which_end_in_c         nee — grammar: "STEMS WHICH END IN C."
%   i                            чета — grammar: "I спряжение"
%   class_type                   пека, привлека
%   hocbamt_type                 HOCBaMt
%   class_type_2                 взема
%   ii                           държа — grammar: "II спряжение"
%   class_type_3                 хвърлям
%   class_type_4                 мога
%   class_type_5                 видях — grammar: "Старое спряжение (Основа на -и-)"
%   v                            искал — grammar: "Ново спряжение (V кл.)"
%   class_type_6                 лежах — grammar: "Старое спряжение (Акц. гр. В и Г)"
%   class_type_7                 ходех — grammar: "Старое спряжение (Акц. гр. А и Б)"
%   class_type_8                 ходйх — grammar: "Старое спряжение (Основа на -и-)"
%   class_type_9                 четях — grammar: "Старое спряжение (Акц. гр. В и Г)"
%   iii                          чух — grammar: "Старое спряжение (III кл.)"
%   class_type_10                чёток — grammar: "Старое спряжение (Основа на -о-)"
%   c2nd_group                   nnca — grammar: "2ND GROUP."
%   present_active_participle    вода, живея — grammar: "Present Active Participle"
%   present_active_participle_2  държам, казвам, стрелям — grammar: "Present Active Participle"
%   present_active_participle_3  търпя — grammar: "Present Active Participle"
%   conjugation_iii              имам — grammar: "Conjugation III"
%   stems_which_end_in_t_and_k   neK — grammar: "STEMS WHICH END IN T AND K."
%   class_type_11                нося — grammar: "старое спряжение (полный тип)"
%   class_type_12                пиша
%   class_type_13                седна — grammar: "старое спряжение (полный тип)"
%   class_type_14                стоя — grammar: "старое спряжение (краткий тип)"
%   class_type_15                чакам — grammar: "новое спряжение"
% Irregular (listed in data/verbs.exceptions.tsv): бѫдѫ, видя, вляза, изляза, съм, ям
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
