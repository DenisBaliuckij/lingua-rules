% rules/gdb/verbs.lp
% Ollari Gadaba verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2914: A Descriptive Grammar of Ollari Gadaba: An Endangered Dravidian Language (2019), pages 124, 136, 162, 164, 167, 170, 172, 173
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kuy_type                     kuy
%   su_type                      suɖ, tumk
%   a_type                       aɖ, oɖ, weʈ
%   sin_type                     sin
%   tin_type                     tin
%   be_type                      be
%   key_type                     key
%   na_type                      naɡ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
