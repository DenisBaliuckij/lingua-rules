% rules/mhr/adjectives.lp
% Mari (Cheremis) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389078: A Comprehensive Introduction to the Mari Language (2010), pages 44, 48, 57, 59, 61, 71, 72, 78, 79, 100, 130, 131, 132, 137, 149, 160, 172, 180, 181, 191, 214, 231, 237
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   class_type                   ончыч
%   class_type_2                 ошо
%   class_type_3                 сай
%   class_type_4                 шокшо
%   class_type_5                 шуко
%   class_type_6                 ямде
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
