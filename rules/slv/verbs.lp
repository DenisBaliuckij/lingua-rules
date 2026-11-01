% rules/slv/verbs.lp
% Slovene verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 102534: Grammatica slovena: Manuale di morfologia e cenni di sintassi con esercizi (2021), pages 135, 142, 143
%   doc 793673: Kort slovensk grammatik (2009), pages 34, 65, 66, 85, 96
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): bíti, bó, dá, gré, jé, vé
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
