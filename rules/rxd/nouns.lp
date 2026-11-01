% rules/rxd/nouns.lp
% Ngardi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 820883: A Grammar of Ngardi (2021), pages 334, 340, 383, 384, 488, 492
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   temporal_nominal             jalangu, rangarni — grammar: "temporal nominal"
%   temporal_nominal_2           jilan — grammar: "temporal nominal"
%   temporal_nominal_3           raakarra — grammar: "temporal nominal"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
