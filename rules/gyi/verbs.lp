% rules/gyi/verbs.lp
% Gyeli verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 448: A grammar of Gyeli (2021), pages 218, 227, 394, 395
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   l_verb                       gyàga — grammar: "L ∅ verb"
%   h_verb                       gyíbɔ — grammar: "H ∅ verb"
%   l_verb_2                     kɛ̀ — grammar: "L verb"
%   hl_verb                      nyɛ̂ — grammar: "HL verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
