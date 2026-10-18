% rules/kic/nouns.lp
% Kickapoo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8339: Introduction to the Kickapoo Language (1974), pages 41, 55, 58
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   ifikaan_type                 ifikaan
%   koohkoos_type                koohkoos
%   ootcen_type                  ootCen
%   ootben_type                  ootben
%   paas_type                    paas
% Irregular (listed in data/nouns.exceptions.tsv): askihkii, iikiaapi, niiwa m y, oskwaateemi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
