% rules/dbl/nouns.lp
% Dyirbal nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 100786: The Dyirbal language of North Queensland (1972), pages 66, 70, 79, 267
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   gubur_type                   gubur
%   gugar_type                   gugar
%   midin_type                   midin
%   wadam_type                   wadam
%   yamani_type                  yamani
%   yaxa_type                    yaxa
%   bijid_type                   bijid
%   d_type                       d
%   walguy_type                  walguy
% Irregular (listed in data/nouns.exceptions.tsv): giyi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
