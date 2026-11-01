% rules/sms/nouns.lp
% Skolt Saami nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388174: A Grammar of Skolt Saami (2010), pages 115, 122, 128, 129, 131, 135, 145, 146, 152, 157, 160, 163, 175, 220, 229, 251, 252, 253, 256, 269, 326
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   muorr_type                   muõrr
%   class_2_group_a              maadd — grammar: "Class 2, Group A"
%   class_12_nominal             moččääb — grammar: "Class 12 nominal"
%   class_5_nominal              porrmõš — grammar: "Class 5 nominal"
%   class_8_noun                 pååttaǩ — grammar: "Class 8 noun"
%   class_12_nominal_2           uuʹccab — grammar: "Class 12 nominal"
%   class_1_nominals             võrr — grammar: "Class 1 nominals"
%   class_9_nominal              ǩiõlkuž — grammar: "Class 9 nominal"
%   class_1_group_c_nominals     kååʹpp — grammar: "Class 1, Group C nominals"
%   siess_type                   sieʹss
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
