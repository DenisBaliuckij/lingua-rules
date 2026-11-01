% rules/fro/verbs.lp
% Old French verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389372: Old French: A Concise Handbook (1974), pages 29, 49, 51, 65, 73, 74, 77, 168, 173
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ester_type                   ester
%   escrivre_type                escrivre
%   class_1                      parler — grammar: "Class 1"
%   strong_perfects_st_i         veoir — grammar: "strong perfects (St/i)"
%   eissir_type                  eissir
%   estovoir_type                estovoir
%   duire_type                   duire
%   strong_perfects_st_s         tordre — grammar: "strong perfects (St/s)"
%   weak_perfects_wk_a           doner — grammar: "weak perfects (Wk/a)"
%   offrir_type                  offrir
% Irregular (listed in data/verbs.exceptions.tsv): nuire, ocire, oir, paisre, paroir
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
