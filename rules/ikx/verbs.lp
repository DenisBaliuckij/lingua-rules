% rules/ikx/verbs.lp
% Ik verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 138: The Ik language: Dictionary and grammar sketch (2017), pages 496, 499, 500, 501, 519, 520, 523, 533, 539, 542, 552, 553, 555, 556, 557, 569, 570, 571
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ats_type                     ats
%   intentional_imperfective_int_ipfv àts — grammar: "intentional-imperfective (int/ipfv)"
%   watoni_type                  wàtònì
%   wdni_type                    wɛ́dɔ̀nì
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
