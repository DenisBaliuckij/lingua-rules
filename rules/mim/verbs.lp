% rules/mim/verbs.lp
% Mixtec (Alacatlatzala) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389488: Gramática del Tuꞌun Savi (la lengua mixteca) de Alacatlatzala, Guerrero (2012), pages 77, 80, 84, 89, 90, 91, 92, 93, 101, 102, 110, 117, 122, 130
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   nona_type                    noná
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
