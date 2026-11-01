% rules/tqw/verbs.lp
% Tonkawa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388662: A Sketch Grammar of Tonkawa (2014), pages 9, 13, 14, 17, 18, 19, 20, 24
%   doc 388663: Tonkawa: An Indian Language of Texas (1933), pages 82, 98, 100, 102, 104, 108
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   yagba_type                   yagba
%   yakapa_type                  yakapa
%   da_yaxa_type                 da-yaxa
% Irregular (listed in data/verbs.exceptions.tsv): ya'dje
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
