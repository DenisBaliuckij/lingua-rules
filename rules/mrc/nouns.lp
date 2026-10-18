% rules/mrc/nouns.lp
% Maricopa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389253: Maricopa Morphology and Syntax (1980), pages 45, 71, 100, 101, 102, 103, 104, 105, 106
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   akoy_type                    akoy
%   hat_type                     hat
%   humar_type                   humar
%   iipaa_type                   iipaa
%   mhay_type                    mhay
%   mshhay_type                  mshhay
%   nchen_type                   nchen
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
