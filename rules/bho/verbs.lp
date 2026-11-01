% rules/bho/verbs.lp
% Bhojpuri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920722: Seven grammars of the dialects and subdialects of the Bihárí language, spoken in the provi (1870), pages 33, 60, 61, 89
%   doc 920724: A Grammar of Bhojpuri (2020), pages 258, 259, 328, 331, 332, 335, 340, 349, 533, 591
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_type                   देख
%   class_type_2                 खा
%   copula                       रह — grammar: "copula"
%   class_type_3                 रहनि
%   class_type_4                 खानि
%   dekh_type                    dekh
%   hoi_type                     hoi
% Irregular (listed in data/verbs.exceptions.tsv): dhar, kar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
