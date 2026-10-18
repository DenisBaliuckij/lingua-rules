% rules/isl/verbs.lp
% Icelandic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388284: Icelandic (2011), pages 12, 14, 15, 18, 19, 21
%   doc 388287: Mimir Icelandic Grammar (n.d.), pages 1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 25, 26, 29, 30, 31, 32, 33, 34, 35, 36, 37
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_4                       kalla — grammar: "Weak 4"
%   strong                       bita — grammar: "Strong"
%   bresta_type                  bresta
%   type_6_verbs                 gráta — grammar: "Type 6 Verbs"
%   urfa_type                    þurfa
%   fara_type                    fara
%   vita_type                    vita
%   weak_3                       duga — grammar: "Weak 3"
%   weak_1                       telja — grammar: "Weak 1"
%   middle_forms                 bitast — grammar: "middle forms"
%   middle_forms_2               teljast — grammar: "middle forms"
%   middle_forms_3               kallast — grammar: "middle forms"
%   stela_type                   stela
% Irregular (listed in data/verbs.exceptions.tsv): bera, bjóða, bíta, eiga, fá, geta, hafa, kunna, mega, muna, munu, skulu ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
