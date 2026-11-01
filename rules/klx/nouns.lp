% rules/klx/nouns.lp
% Koluwawa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 823826: Koluwawa Grammar Essentials (2002), pages 25, 28
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   di_type                      di
%   biyala_type                  biyala
%   guwa_type                    guwa
%   mwata_type                   mwata
%   takula_type                  takula
% Irregular (listed in data/nouns.exceptions.tsv): gwamana, vavine
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
