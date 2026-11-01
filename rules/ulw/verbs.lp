% rules/ulw/verbs.lp
% Ulwa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 415: A grammar of Ulwa (Papua New Guinea) (2023), pages 82, 151, 153, 157, 165, 193, 196, 216, 237, 443
%   doc 3510: A Grammar of Ulwa (2018), pages 54, 155, 171, 172, 374, 547
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ki_type                      kï
%   ta_type                      ta
%   lo_type                      lo
%   ale_type                     ale
%   irregular_perfective_suffix_n na — grammar: "irregular perfective suffix -n"
% Irregular (listed in data/verbs.exceptions.tsv): li, tï
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
