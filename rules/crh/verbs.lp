% rules/crh/verbs.lp
% Kipchak Turkish (Armenian script) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388803: Crimean Tatar (2010), pages 48, 49, 55, 56, 57, 59, 71, 73, 75, 76, 77, 80, 81
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   al_type                      al
%   future_present               sev — grammar: "future/present"
%   tyf_type                     tyf
%   ajt_type                     ajt
%   ele_type                     ele
%   et_type                      et
%   sora_type                    sora
%   unut_type                    unut
%   ol_type                      ol
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
