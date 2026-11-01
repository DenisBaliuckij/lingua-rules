% rules/drl/verbs.lp
% Bagandji verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28188: Development of a Learner’s Grammar for Paakantyi (2015), pages 166, 170, 171, 172, 199, 216, 217, 218, 222, 225, 333, 334, 335, 336, 340, 341
%   doc 48398: The Bagandji language (1982), pages 162
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   thayi_la_type                thayi-la
%   bari_type                    bari
%   pumpa_type                   pumpa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
