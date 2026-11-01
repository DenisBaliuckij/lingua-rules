% rules/sjw/verbs.lp
% Shawnee verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71632: Shawnee grammar (1994), pages 169, 170, 177, 178, 182, 183, 205, 207, 208, 209, 210, 213
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   animate_intransitive_ai      hkawehgee — grammar: "Animate Intransitive (AI)"
%   ta_direct_paradigm           kkil — grammar: "TA Direct Paradigm"
%   ai_ti_imperative             kkito — grammar: "AI/TI Imperative"
%   ai_ti_imperative_2           mkaweeleta — grammar: "AI/TI Imperative"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
