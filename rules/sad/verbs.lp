% rules/sad/verbs.lp
% Sandawe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 178: A grammar of Sandawe: A Khoisan language of Tanzania (2012), pages 73, 75, 104, 105, 206, 213
%   doc 84803: A Sandawe Grammar (2010), pages 58, 85
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   g_type                       G
% Irregular (listed in data/verbs.exceptions.tsv): h"¤k'•›, ha&˘k"¤ts'•›, tHa^, t¬a&˘s"•›, v#h#, wvkhh#, ¤e@, ó'a$we@
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
