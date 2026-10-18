% rules/blz/verbs.lp
% Balantak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 292764: A grammar of Balantak: a language of Eastern Sulawesi (2012), pages 117, 168, 171, 196, 208
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   pate_type                    pate
%   transitive_verbs             ili — grammar: "transitive verbs"
%   mo_intransitive_verbs        guas — grammar: "mo- intransitive verbs"
%   ma_intransitive_verbs        lawu — grammar: "ma- intransitive verbs"
%   min_intransitive_verbs       soop — grammar: "min- intransitive verbs"
%   unmarked_intransitive_verbs  taka — grammar: "unmarked intransitive verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
