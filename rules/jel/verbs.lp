% rules/jel/verbs.lp
% Yelmek verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 251: A Documentation and Description of Yelmek and Maklew (2020), pages 50, 106, 211, 231, 232, 233, 234, 235, 236, 237, 251, 252, 260, 261, 263, 265, 330
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   astem                        eŋu — grammar: "aSTEM"
%   class_2                      iblo — grammar: "Class 2"
%   pio_type                     pio
%   class_3                      ukalo — grammar: "Class 3"
%   stems_with_one_phoneme_differences_betwe buy — grammar: "Stems with one phoneme differences between stems"
% Irregular (listed in data/verbs.exceptions.tsv): bring, catch, cook, cut, hit, mʉ, search, see, throw
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
