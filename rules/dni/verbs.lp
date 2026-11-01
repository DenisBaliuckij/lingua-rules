% rules/dni/verbs.lp
% Lower Grand Valley Dani verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289382: A grammar of Lower Grand Valley Dani (1981), pages 383, 404
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ha_type                      ha
%   wat_type                     wat
%   hei_type                     hei
%   jak_type                     jak
%   jap_type                     jap
%   keil_type                    keil
%   pal_type                     pal
%   yk_type                      yk
%   a_type                       a
%   i_type                       i
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
