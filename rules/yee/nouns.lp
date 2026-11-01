% rules/yee/nouns.lp
% Yimas nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8699: The Yimas Language of New Guinea (1991), pages 107, 136, 157, 159, 161, 195, 242
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   panmal_type                  panmal
%   class_vii                    akakrm, akm, impram, karm ... — grammar: "class VII"
%   class_i                      akay, mamay — grammar: "class I"
%   class_vii_2                  antkm — grammar: "class VII"
%   class_vi                     antmaiJ — grammar: "Class VI"
%   class_i_2                    apanwakn — grammar: "class I"
%   class_vii_3                  aprm — grammar: "class VII"
%   class_i_3                    apuk, macawk — grammar: "class I"
%   class_i_4                    apwi — grammar: "class I"
%   class_vi_2                   kaij — grammar: "Class VI"
%   class_vii_4                  kampurm — grammar: "class VII"
%   class_vi_3                   kav — grammar: "class VI"
%   class_i_5                    kayantaki — grammar: "class I"
%   class_vii_5                  manm, nampunm, tanm — grammar: "class VII"
%   class_i_6                    matn — grammar: "class I"
%   class_i_7                    mayp!Jknawt — grammar: "class I"
%   class_vii_6                  na!Jklm, pa!Jklm — grammar: "class VII"
%   class_i_8                    namarawt, taJJkarawt — grammar: "class I"
%   class_vi_4                   pamu!Jk — grammar: "Class VI"
%   class_vi_5                   pamuiJ — grammar: "Class VI"
%   class_i_9                    takul — grammar: "class I"
%   class_vii_7                  waprm — grammar: "class VII"
%   class_i_10                   wuntumalJ — grammar: "class I"
%   class_i_11                   wuntumpnawt — grammar: "class I"
%   class_vi_6                   yampaiJ — grammar: "Class VI"
%   class_i_12                   yanaw — grammar: "class I"
%   class_vii_8                  !JaiJkm — grammar: "class VII"
%   class_i_13                   away — grammar: "class I"
% Irregular (listed in data/nouns.exceptions.tsv): JJayuk, kalakn, naJJkpuk, narmaJJ, nmprm, numpran, paypra, tnum
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
