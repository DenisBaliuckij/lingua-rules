% rules/slv/nouns.lp
% Slovene nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 102534: Grammatica slovena: Manuale di morfologia e cenni di sintassi con esercizi (2021), pages 135, 142, 143
%   doc 793673: Kort slovensk grammatik (2009), pages 34, 65, 66, 85, 96
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   gnezdo_type                  gnézdo
%   sonce_type                   sónce
% Irregular (listed in data/nouns.exceptions.tsv): dŕva, krí, tlà
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
