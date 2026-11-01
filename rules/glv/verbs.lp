% rules/glv/verbs.lp
% Manx verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389500: A Practical Grammar of the Antient Gaelic, Usually Called Manx (1870), pages 66, 68, 70, 71
%   doc 389501: Manx (2010), pages 21, 22, 23, 24, 31, 32, 33, 34
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ynsaghey_type                ynsaghey, follaghey
%   cooineen_type                cooineen
%   ee_type                      ee, tilg
%   faagail_type                 faagail
%   cooinaghtyn_type             cooinaghtyn
% Irregular (listed in data/verbs.exceptions.tsv): clashtyn, coyrt, çheet
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
