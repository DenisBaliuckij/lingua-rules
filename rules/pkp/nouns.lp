% rules/pkp/nouns.lp
% Pukapukan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 829463: A Grammar of Pukapukan (2002), pages 142, 172, 194, 219, 220, 221, 235
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   matua_type                   matua
%   taina_type                   taina
%   tangata_type                 tangata
%   tupuna_type                  tupuna
%   wawine_type                  wawine
% Irregular (listed in data/nouns.exceptions.tsv): tama
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
