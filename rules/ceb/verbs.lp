% rules/ceb/verbs.lp
% Cebuano verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388578: A Functional Reference Grammar of Cebuano (2009), pages 65, 138
%   doc 896226: Arte compendiado de la lengua Cebuana (1895), pages 26, 75, 112, 113, 114, 115, 122, 123
%   doc 896231: Gramática bisaya para facilitar el estudio del dialecto bisaya cebuano (1898), pages 13, 26, 27, 28, 44, 48, 53, 58
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   bunal_type                   bunal
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
