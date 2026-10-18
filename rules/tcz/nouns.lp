% rules/tcz/nouns.lp
% Thado Chin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289406: A Slight Notice of the Grammar of the Thadou or New Kookie Language (1857), pages 3, 6, 7, 9, 10
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   chem_type                    Chem
%   chapung_type                 Chapung
%   kel_type                     Kel
%   mi_type                      Mi
%   nitimei_type                 Nitimei
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
