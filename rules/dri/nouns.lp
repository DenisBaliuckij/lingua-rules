% rules/dri/nouns.lp
% C'lela nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73324: An Orthography for Writing C'lela (2004), pages 17, 18
%   doc 73329: Aspects of the Morphology of C’lela (2013), pages 56, 57, 69, 74
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_4_2_d_c                d’bà — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_2              d’dìn — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_3              d’gyàn — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_4              d’gèn — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_5              d’kùl — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_6              d’wà — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_7              d’wén — grammar: "Class 4/2 [d’-/c’-]"
%   class_5_2_k_c                k’gùusù — grammar: "Class 5/2 [k’-/c’-]"
%   class_5_2_k_c_2              k’tákàllá — grammar: "Class 5/2 [k’-/c’-]"
%   class_5_2_k_c_3              k’vàná — grammar: "Class 5/2 [k’-/c’-]"
%   class_5_2_k_c_4              k’àdùdù — grammar: "Class 5/2 [k’-/c’-]"
%   class_4_2_d_c_8              u’bù — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_9              u’kàar — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_10             u’kàatá — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_11             u’làn — grammar: "Class 4/2 [d’-/c’-]"
%   class_4_2_d_c_12             u’sòká — grammar: "Class 4/2 [d’-/c’-]"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
