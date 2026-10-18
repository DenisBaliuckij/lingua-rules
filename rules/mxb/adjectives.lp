% rules/mxb/adjectives.lp
% Mixtec (Tezoatlán dialect) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389487: Gramática popular del mixteco del municipio de Tezoatlán, San Andrés Yutatío, Oaxaca (2007), pages 49, 61, 82, 89, 114, 119, 136, 139, 143, 144
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   kani_type                    káni̱
%   kaano_type                   káŋano
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
