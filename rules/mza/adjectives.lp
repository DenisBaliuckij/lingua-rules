% rules/mza/adjectives.lp
% Mixteco de Zacatepec adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389491: Gramática popular del tacuate (mixteco) de Santa María Zacatepec, Oaxaca (2011), pages 36, 38, 54, 67, 68, 74, 75, 76
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   kani_type                    kani
%   kanu_type                    kanu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
