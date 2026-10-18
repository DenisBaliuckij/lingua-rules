% rules/cor/verbs.lp
% Cornish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389744: Kernewek dre Lyther: Summary of Lessons for Grade 1 and Grades 2/3 (n.d.), pages 24, 35, 52, 78, 90, 95, 96, 110, 114, 115, 119, 124, 128, 131, 135, 139, 144, 148, 151, 158
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   gweles_type                  gweles
%   bos_type                     bos
%   gul_type                     gul
%   dos_type                     dos
%   godhvos_type                 godhvos
%   verbs_ending_in_he           glanhe — grammar: "verbs ending in -he"
%   guide_verb_for_a_number_of_verbs_ending previ — grammar: "guide verb for a number of verbs ending in “-i.”"
%   mynnes_type                  mynnes
%   mos_type                     mos
%   kara_type                    kara
%   leverel_type                 leverel, merwel
%   galloes_type                 galloes
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
