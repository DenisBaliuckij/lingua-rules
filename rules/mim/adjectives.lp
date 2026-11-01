% rules/mim/adjectives.lp
% Mixtec (Alacatlatzala) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389488: Gramática del Tuꞌun Savi (la lengua mixteca) de Alacatlatzala, Guerrero (2012), pages 77, 80, 84, 89, 90, 91, 92, 93, 101, 102, 110, 117, 122, 130
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
% Irregular (listed in data/adjectives.exceptions.tsv): káꞌno, loꞌo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
