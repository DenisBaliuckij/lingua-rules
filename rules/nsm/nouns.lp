% rules/nsm/nouns.lp
% Sema nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2919: A Sema Grammar (1980), pages 89, 90, 94, 95, 102, 109, 110, 111
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nhp_class_of_nouns           alhizeu — grammar: "NHP class of nouns"
%   nanhnv_class_of_nouns        amst — grammar: "NanHnv class of nouns"
%   nanhnv_class_of_nouns_2      ane — grammar: "NanHnv class of nouns"
%   nhp_class_of_nouns_2         aqeu — grammar: "NHP class of nouns"
%   act_type                     act
%   aki_type                     aki
%   apu_type                     apu
%   nanhnv_class_of_nouns_3      ase — grammar: "NanHnv class of nouns"
%   astbo_type                   astbo
%   nanhnv_class_of_nouns_4      awu — grammar: "NanHnv class of nouns"
%   axamnu_type                  axamnu
%   ilimi_type                   ilimi
%   timl_type                    timl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
