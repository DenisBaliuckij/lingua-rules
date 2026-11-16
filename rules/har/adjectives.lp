% rules/har/adjectives.lp
% Harari adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2541: Harari: A Descriptive Grammar (2013), pages 107, 127, 142, 181, 184, 191, 192, 197, 198, 200, 242, 251, 254, 265, 338, 389
%   doc 9713: Break Down of Harari Grammar (Intermediate level) (2012), pages 41, 42, 70, 71, 73, 98, 99, 102
%   doc 853092: The Verb in Harari (South Ethiopic) (1958), pages 27, 33, 37, 46, 48, 52, 53, 58, 59, 60, 61, 63, 64, 65, 67, 68, 72, 74, 75, 76, 79, 80, 81, 83, 84, 90, 91
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gidir_type                   gidīr
%   gudor_type                   gudōr
%   hagis_type                   haǧīs
%   nazif_type                   näzīf
%   qacin_type                   qäčīn
%   raxis_type                   räxīs
%   razin_type                   räzīn
%   tit_type                     t’it
%   tabiq_type                   t’äbīq
%   wadal_type                   wädäl
%   acir_type                    ħačīr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
