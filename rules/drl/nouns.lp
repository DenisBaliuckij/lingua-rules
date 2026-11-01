% rules/drl/nouns.lp
% Bagandji nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28188: Development of a Learner’s Grammar for Paakantyi (2015), pages 166, 170, 171, 172, 199, 216, 217, 218, 222, 225, 333, 334, 335, 336, 340, 341
%   doc 48398: The Bagandji language (1982), pages 162
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   parna_type                   parna, thumpi
%   yarrantyi_type               yarrantyi, yaparra
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
