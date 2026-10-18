% rules/lzz/nouns.lp
% Laz nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8233: Description du dialecte laze d’Arhavi (caucasique du sud, Turquie) Grammaire et textes (2009), pages 170, 367, 372, 378, 387, 396, 410, 640
%   doc 54373: ლაზურ-მეგრული გრამატიკა. I. მორფოლოგია (Laz-Megrelian Grammar. I. Morphology) (2015), pages 922, 923, 924, 930, 931
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   კოჩ-ი
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
