% rules/tmb/nouns.lp
% Avava nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626253: The Avava language of central Malakula (Vanuatu) (2014), pages 55, 64, 96
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   atu_type                     atu, batu, ngorngori, onosi
%   bau_type                     bau, bongo, leme, mata ...
%   vivini_type                  vivini
%   manu_type                    manu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
