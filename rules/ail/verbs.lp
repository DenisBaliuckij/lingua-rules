% rules/ail/verbs.lp
% Eibela verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289755: A Grammar of Eibela: A language of Western Province, Papua New Guinea (2016), pages 82, 134, 233, 234, 238
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ali_type                     aːli
%   l_conjugation_class          hit — grammar: "-lɛː Conjugation Class"
%   holo_type                    hoːloː
%   nagl_type                    naːglɛ
%   l_conjugation_class_2        say — grammar: "-lɛː Conjugation Class"
%   alveolar_consonant_change_verbs sɛdɛː — grammar: "Alveolar Consonant Change Verbs"
%   l_verbs                      sɛlɛː — grammar: "-lɛ Verbs"
%   tal_type                     taːlɛ
%   w_type                       wɛː
%   c_verbs                      tijɛː — grammar: "-Cɛ Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
