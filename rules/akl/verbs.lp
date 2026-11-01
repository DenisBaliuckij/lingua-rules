% rules/akl/verbs.lp
% Aklanon verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93546: A Grammar of Aklan (1971), pages 115, 116, 117, 118
%   doc 292782: Cursos de lengua panayana (1876), pages 15, 16, 18, 31, 32, 33, 34, 35, 40, 41
%   doc 292784: A Study of the Aklanon Dialect. Volume One: Grammar (1968), pages 121, 174, 184
%   doc 856070: A Study of the Aklanon Dialect. Volume One: Grammar. (1968), pages 174, 184
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   buhat_type                   buhat
%   ibuhat_type                  ibuhat
%   sulatan_type                 sulatan
%   tumanon_type                 tumanon
%   tercera_pasiva               sulat — grammar: "TERCERA PASIVA"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
