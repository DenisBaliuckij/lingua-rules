% rules/wbp/verbs.lp
% Warlpiri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40796: Topics in Warlpiri Grammar (1980), pages 85, 113
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   v4                           nga-rni — grammar: "V4"
%   nyunji_type                  nyunji
%   v2                           paka-rni — grammar: "V2"
%   vi                           wangka-mi — grammar: "VI"
%   v5                           ya-ni — grammar: "V5"
%   yirra_type                   yirra, yurrpa
%   pirri_kiji_type              pirri-kiji
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
